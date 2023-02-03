//
//  APICaller.swift
//  TheMovieDB
//
//  Created by Talha Batuhan Irmalı on 3.02.2023.
//

import Foundation

enum NetworkError: Error {
    case urlError
    case canNotParseData
}

class APICaller {
    static func getTrendingMovies(completionHandler: @escaping (_ result: Result<TrendingMovie,NetworkError>) -> Void) {
        
        let urlString = NetworkConstant.shared.serverAdress +
                        "trending/all/day?api_key=" +
                        NetworkConstant.shared.apiKey
        
        guard let url = URL(string: urlString) else {
            completionHandler(.failure(.urlError))
            return
        }
        URLSession.shared.dataTask(with: url) { dataResponse, urlResponse, error in
            
            if error == nil,
               let data = dataResponse,
               let resultData = try? JSONDecoder().decode(TrendingMovie.self, from: data) {
                completionHandler(.success(resultData))
            }else{
                completionHandler(.failure(.canNotParseData))
            }
        }.resume()
    }
}

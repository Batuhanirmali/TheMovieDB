//
//  MainViewModel.swift
//  TheMovieDB
//
//  Created by Talha Batuhan Irmalı on 2.02.2023.
//

import Foundation

class MainViewModel {
    
    func numberOfSection() -> Int {
        1
    }
    
    func numberOfRows(in section: Int) -> Int {
        10
    }
    
    func getData() {
        APICaller.getTrendingMovies { result in
            switch result{
            case .success(let data):
                print("The Trending Counts: \(data.results.count)")
            case .failure(let error):
                print(error)
            }
        }
        
        
    }
}

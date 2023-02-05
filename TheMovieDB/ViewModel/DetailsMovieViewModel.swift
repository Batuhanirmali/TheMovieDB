//
//  DetailsMovieViewModel.swift
//  TheMovieDB
//
//  Created by Talha Batuhan Irmalı on 5.02.2023.
//

import Foundation

class DetailsMovieViewModel {
    var movie:Movie
    
    var movieTitle: String
    var movieImage: URL?
    var movieDescription: String
    var movieID: Int
    
    init(movie: Movie) {
        self.movie = movie
        self.movieID = movie.id
        self.movieTitle = movie.title ?? movie.name ?? ""
        self.movieDescription = movie.overview ?? ""
        self.movieImage = makeImageURL(movie.backdropPath ?? "")
    }
    
    private func makeImageURL(_ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageServerAdress)\(imageCode)")
    }
}

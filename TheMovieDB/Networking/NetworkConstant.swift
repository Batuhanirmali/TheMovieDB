//
//  NetworkConstant.swift
//  TheMovieDB
//
//  Created by Talha Batuhan Irmalı on 3.02.2023.
//

import Foundation

class NetworkConstant {
    public static var shared: NetworkConstant = NetworkConstant()
    
    private init() {
        
    }
    
    public var apiKey: String {
        get {
            return "628bc182a1201cb924359ced0b5dd9b7"
        }
    }
    
    public var serverAdress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    public var imageServerAdress: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
    
}

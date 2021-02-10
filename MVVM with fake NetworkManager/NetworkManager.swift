//
//  NetworkManager.swift
//  MVVM with fake NetworkManager
//
//  Created by Helga on 10.02.2021.
//

import Foundation

class NetworkManager : NSObject {
    
    
    func fetchMovies (completion : ([String]) -> () ) {
        completion (["Movie 1", "Movie 2", "Movie 3"])
    }
}

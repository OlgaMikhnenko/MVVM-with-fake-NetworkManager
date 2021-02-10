//
//  ViewModel.swift
//  MVVM with fake NetworkManager
//
//  Created by Helga on 10.02.2021.
//

import Foundation

class ViewModel : NSObject {
    
    @IBOutlet weak var networkManager: NetworkManager!
    
    private var movies : [String]?
    
    func fetchMovies(completion: @escaping() -> ()) {
        networkManager.fetchMovies { [weak self] movies in
            self?.movies = movies
            completion()
        }
    }
    
    func numberOfRowsInSection () -> Int {
        guard let movies = movies else {
            return 0
        }
        return movies.count
    }
    
    func titleForCell (atIndexPath indexPath : IndexPath) -> String {
        guard let movies = movies else {return ""}
        return movies[indexPath.row]
    }
}

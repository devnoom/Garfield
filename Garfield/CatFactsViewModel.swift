//
//  CatFactsViewModel.swift
//  Garfield
//
//  Created by MacBook Air on 02.05.24.
//

import Foundation
import Networking

class CatFactsViewModel {
    
    // MARK: - Properties
    var factsArray: [Facts] = [] {
        didSet { onFactsUpdated?() }
    }
    var onFactsUpdated: (() -> Void)?
    
    // MARK: - Methods
    func getFacts() {
        getData()
    }
    
    func getData() {
        let url = URL(string: "https://catfact.ninja/facts")!
        NetworkingService.shared.fetchData(from: url) { [weak self] (result: Result<FactsResponse, Error>) in
            switch result {
            case .success(let response):
                self?.factsArray = response.data
                self?.onFactsUpdated?()
            case .failure(let error):
                print("Error fetching facts:", error)
            }
        }
    }

}


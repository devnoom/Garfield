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
    let urlString = "https://catfact.ninja/facts"
    var factsArray: [Facts] = [] {
        didSet { onFactsUpdated?() }
    }
    var onFactsUpdated: (() -> Void)?
    
    // MARK: - Methods
    func getFacts() {
        getData()
    }
    
    private func getData() {
        NetworkService().getData(urlString: urlString) { (result: Result<[Facts], Error>) in
            switch result {
            case .success(let success):
                self.factsArray = success
            case .failure(let failure):
                //ერორის პრინტვა
                print(failure.localizedDescription)
            }
        }
    }
}


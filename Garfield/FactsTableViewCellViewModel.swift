//
//  FactsTableViewCellViewModel.swift
//  Garfield
//
//  Created by MacBook Air on 02.05.24.
//

import Foundation

struct FactsTableViewCellViewModel {
    private var fact: Facts
    
    init(fact: Facts) {
        self.fact = fact
    }
    
    var factText: String {
        return fact.fact
    }
}

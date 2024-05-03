//
//  FactsExtension.swift
//  Garfield
//
//  Created by MacBook Air on 03.05.24.
//

import Foundation
import UIKit

extension CatFactsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}


extension CatFactsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            viewModel.factsArray.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CatFactsViewTableViewCell
            let fact = viewModel.factsArray[indexPath.row]
            
            cell.facts.text = fact.fact
            
            return cell
        }
}



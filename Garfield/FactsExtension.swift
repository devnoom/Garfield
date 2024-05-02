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

// Assume you have a custom UITableViewCell subclass named FactTableViewCell

extension CatFactsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.factsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FactsTableViewCellViewModel
        let fact = viewModel.factsArray[indexPath.row]
        
        cell.factText.text!= fact.fact
        
        return cell
    }
}

extension UIView {
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints                              = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive            = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive    = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive  = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive      = true
    }
}


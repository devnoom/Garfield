//
//  CatFactsViewTableViewCell.swift
//  Garfield
//
//  Created by MacBook Air on 02.05.24.
//


import UIKit

class CatFactsViewTableViewCell: UITableViewCell {
    
    static let identifier = "CatFactsViewTableViewCell"
   
    public var eachFact = UITextView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setCellUI()
        
    }
    

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   func setCellUI() {
       addSubview(eachFact)
       
       self.contentView.layer.borderWidth = 2
       self.contentView.layer.borderColor = UIColor.gray.cgColor
       self.contentView.layer.cornerRadius = 20
       self.contentView.layer.masksToBounds = true
       
       eachFact.translatesAutoresizingMaskIntoConstraints = false
       
       NSLayoutConstraint.activate([
        eachFact.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
        eachFact.centerYAnchor.constraint(equalTo: centerYAnchor),
        eachFact.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        eachFact.centerYAnchor.constraint(equalTo: centerYAnchor),
       ])
       
    }
    // MARK: - Reload Data
    func updateCell(with fact: FactsTableViewCellViewModel) {
        eachFact.text = fact.factText
        // Update any other UI elements with data from the fact object
    }
    
    

}

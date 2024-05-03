//
//  CatFactsViewTableViewCell.swift
//  Garfield
//
//  Created by MacBook Air on 02.05.24.
//


import UIKit

class CatFactsViewTableViewCell: UITableViewCell {
    // MARK: - UI Components
    let facts = UILabel()
    
    // MARK: - LifeCycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        backgroundColor = .cyan
        contentView.addSubview(facts)
        facts.numberOfLines = 0
        facts.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            facts.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            facts.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            facts.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            facts.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
        ])
    }
    
}

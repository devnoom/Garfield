//
//  CatFactsVC.swift
//  Modulars - N23
//
//  Created by Zuka Papuashvili on 01.05.24.
//

import UIKit

class CatFactsViewController: UIViewController {
    
    //MARK: - Properties
    let tableView = UITableView()
    var viewModel = CatFactsViewModel()

    //MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        updateTableView()
    }

    //MARK: - UI Setup
    func setupTableView() {
        view.backgroundColor = .lightGray
        view.addSubview(tableView)
        //delegates:
        tableView.dataSource = self
        //cell:
        tableView.register(CatFactsViewTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        tableView.layer.cornerRadius = 20
        tableView.backgroundColor = .systemBackground
        //constraints:
        tableViewConstraints()
    }

    //MARK: - Constraints
    func tableViewConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 6),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -6),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -25)
        ])
    }
    
    //MARK: - Updating TableView
    func updateTableView() {
        viewModel.onFactsUpdated = { [weak self] in
            self?.tableView.reloadData()
        }
        viewModel.getFacts()
    }
}

//MARK: - Extension TableView DataSource



////
////  CatFactsViewController.swift
////  Garfield
////
////  Created by MacBook Air on 02.05.24.
////
//import UIKit
//
//class CatFactsViewController: UIViewController {
//    var viewModel = CatFactsViewModel()
//    
//    let factsTableView: UITableView = {
//        let tableView = UITableView()
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        return tableView
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .white
//        configureTableView()
//        reloadData()
//    }
//    
//    func configureTableView() {
//        factsTableView.register(CatFactsViewTableViewCell.self, forCellReuseIdentifier: CatFactsViewTableViewCell.identifier)
//        factsTableView.dataSource = self
//        factsTableView.delegate = self
//        
//        view.addSubview(factsTableView)
//        NSLayoutConstraint.activate([
//            factsTableView.topAnchor.constraint(equalTo: view.topAnchor),
//            factsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            factsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            factsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
//        ])
//    }
//    
//    func reloadData() {
//        viewModel.getFacts()
//        viewModel.onFactsUpdated = { [weak self] in
//            DispatchQueue.main.async {
//                self?.factsTableView.reloadData()
//            }
//        }
//    }
//    
//    
//}

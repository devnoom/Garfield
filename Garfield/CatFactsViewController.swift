

import UIKit

class CatFactsViewController: UIViewController {
    
    //MARK: - Properties
    var viewModel = CatFactsViewModel()
    
    // MARK: - UI Components
    let tableView = UITableView()

    //MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        updateView()
    }

    //MARK: - UI Setup
    func setupUI() {
        view.backgroundColor = .darkGray
        
        view.addSubview(tableView)
        
        tableView.dataSource = self
        
        tableView.register(CatFactsViewTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        tableView.layer.cornerRadius = 20
        tableView.backgroundColor = .systemBackground
    
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -25)
        ])
    }
    
    //MARK: - Updating TableView
    func updateView() {
        viewModel.onFactsUpdated = { [weak self] in
            self?.tableView.reloadData()
        }
        viewModel.getFacts()
    }
}



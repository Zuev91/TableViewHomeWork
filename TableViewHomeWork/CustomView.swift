//
//  customeView.swift
//  TableViewHomeWork
//
//  Created by Alexandr Zuev on 9.01.24.
//

import UIKit

class CustomView: UIView, UITableViewDelegate, UITableViewDataSource {
    //MARK: Variables
    private var labels = ["First", "Middle", "Last"]
    private var placeholders = ["Enter First Name", "Enter Middle Name", "Enter Last Name"]
    private let image = UIImageView(image: UIImage(named: "download"))
    
    //MARK: UI Components
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .systemBackground
        tableView.allowsSelection = true
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupUI()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: UI Components
    private func setupUI() {
        self.backgroundColor = .systemRed
        self.addSubview(image)
        self.addSubview(tableView)
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        image.heightAnchor.constraint(equalToConstant: 135).isActive = true
        image.widthAnchor.constraint(equalToConstant: 135).isActive = true
        image.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: self.tableView.leadingAnchor).isActive = true
        
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.heightAnchor.constraint(equalToConstant: 135).isActive = true
        tableView.leadingAnchor.constraint(equalTo: self.image.trailingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        tableView.separatorStyle = .none
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell else {
            fatalError("Error")
        }
        
        cell.configure(with: labels[indexPath.row], and: placeholders[indexPath.row])
        
        return cell
    }
}

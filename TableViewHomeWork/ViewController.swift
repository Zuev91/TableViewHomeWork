//
//  ViewController.swift
//  TableViewHomeWork
//
//  Created by Alexandr Zuev on 9.01.24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    //MARK: UI Components
    private let tableView: UITableView = {
       let tableView = UITableView()
        tableView.backgroundColor = .systemBackground
        tableView.allowsSelection = true
        tableView.register(TableViewCellWithTextField.self, forCellReuseIdentifier: TableViewCellWithTextField.identifier)
        return tableView
    }()
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
//        let tableViewHeader = CustomView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 135))
//        self.tableView.tableHeaderView = tableViewHeader
//        
        let tableViewFooter = CustomButtonBar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 40))
        self.tableView.tableFooterView = tableViewFooter

    }
    
    //MARK: UI Components
    private func setupUI() {
        self.view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor,constant: 5).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 5).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -5).isActive = true
        tableView.separatorStyle = .none
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
//    }
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCellWithTextField.identifier, for: indexPath) as! TableViewCellWithTextField
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 660
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let tableViewHeader = CustomView()
        return tableViewHeader
    }
    
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let tableViewFooter = CustomButtonBar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 40))
//        return tableViewFooter
//    }
}


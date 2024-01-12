//
//  TableViewCellWithTextField.swift
//  TableViewHomeWork
//
//  Created by Alexandr Zuev on 11.01.24.
//

import UIKit

class TableViewCellWithTextField: UITableViewCell {
    
    static let identifier = "CellWithTextField"
    private let myTextView: UITextView = {
        let textField = UITextView()
        textField.backgroundColor = .systemGray
        textField.font = .systemFont(ofSize: 12)
        textField.textAlignment = .natural
        return textField
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupUI() {
        self.contentView.addSubview(myTextView)
        myTextView.translatesAutoresizingMaskIntoConstraints = false
        myTextView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 110).isActive = true
        myTextView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        myTextView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        myTextView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
        myTextView.text = "Notes:"
    }
}

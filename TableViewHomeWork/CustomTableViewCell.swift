//
//  CustomTableViewCell.swift
//  TableViewHomeWork
//
//  Created by Alexandr Zuev on 9.01.24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier = "CustomCell"
    
    private let myLabelView: UILabel = {
       let label = UILabel()
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 14, weight: .bold)
        return label
    }()
    
    private let myTextFieldView: UITextField = {
        let textField = UITextField()
        textField.font = .systemFont(ofSize: 12, weight: .medium)
        textField.textAlignment = .left
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with labelText: String, and textFieldPlaceholder: String) {
        self.myLabelView.text = labelText
        self.myTextFieldView.placeholder = textFieldPlaceholder
    }
    
    private func setupUI() {
        
        self.contentView.addSubview(myLabelView)
        self.contentView.addSubview(myTextFieldView)
        
        myLabelView.translatesAutoresizingMaskIntoConstraints = false
        myTextFieldView.translatesAutoresizingMaskIntoConstraints = false
        
        myLabelView.topAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.topAnchor, constant: 2.5).isActive = true
        myLabelView.bottomAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.bottomAnchor, constant: -2.5).isActive = true
        myLabelView.leadingAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.leadingAnchor).isActive = true
        myLabelView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        myTextFieldView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 3).isActive = true
        myTextFieldView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -2.5).isActive = true
        myTextFieldView.leadingAnchor.constraint(equalTo: self.myLabelView.trailingAnchor, constant: 5).isActive = true
        myTextFieldView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -12).isActive = true
        
    }
}

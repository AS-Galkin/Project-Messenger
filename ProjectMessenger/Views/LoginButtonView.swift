//
//  LoginButtonView.swift
//  ProjectMessenger
//
//  Created by Александр Галкин on 12.10.2021.
//

import UIKit

class LoginButtonView: UIView {
    
    var button: UIButton?
    var label: UILabel?
    
    init(button: UIButton, label: UILabel) {
        super.init(frame: .zero)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        self.button = button
        self.label = label
        
        self.addSubview(label)
        self.addSubview(button)
        setupConstraints(button: button, label: label)
        
    }
    
    private func setupConstraints(button: UIButton, label: UILabel) {
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.topAnchor),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 15),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            button.heightAnchor.constraint(equalToConstant: 60),
            self.bottomAnchor.constraint(equalTo: button.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

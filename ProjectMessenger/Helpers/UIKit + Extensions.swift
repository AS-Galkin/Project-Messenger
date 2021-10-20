//
//  UIKit + Extensions.swift
//  ProjectMessenger
//
//  Created by Александр Галкин on 12.10.2021.
//

import UIKit

//MARK: - UIBUtton extension
extension UIButton {
    convenience init(title: String,
                     titleColor: UIColor,
                     backgroundColor: UIColor,
                     font: UIFont? = .avenir20,
                     isShadow: Bool = false,
                     cornerRadius: CGFloat = 4) {
        self.init(type: .system)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font = font
        self.layer.cornerRadius = cornerRadius
        
        if isShadow {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowRadius = 4
            self.layer.shadowOpacity = 0.5
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
        }
    }
}

//MARK: - UIImageView extension
extension UIImageView {
    convenience init(image: UIImage, contentMode: UIImageView.ContentMode) {
        self.init()
        self.image = image
        self.contentMode = contentMode
    }
}

//MARK: - UIFont extension
extension UIFont {
    static let avenir20 = UIFont(name: "Avenir", size: 20.0)
}

//MARK: -UILabel extension

extension UILabel {
    convenience init(text: String) {
        self.init()
        self.text = text
    }
}

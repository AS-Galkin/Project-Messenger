//
//  ViewController.swift
//  ProjectMessenger
//
//  Created by Александр Галкин on 12.10.2021.
//

import UIKit

class AuthViewController: UIViewController {
    
    let signWithButton = UIButton(title: NSLocalizedString("signWithButton", comment: ""), titleColor: .black, backgroundColor: .white, isShadow: true)
    let signUpButton = UIButton(title: NSLocalizedString("signUpButton", comment: ""), titleColor: .white, backgroundColor: .black)
    let loginButton = UIButton(title: NSLocalizedString("loginButton", comment: ""), titleColor: .red, backgroundColor: .white, isShadow: true)
    let logoImageView = UIImageView(image: #imageLiteral(resourceName: "Logo"), contentMode: .scaleAspectFit)
    let signWithLabel = UILabel(text: NSLocalizedString("signWithLabel", comment: ""))
    let signUpLabel = UILabel(text: NSLocalizedString("signUpLabel", comment: ""))
    let loginLabel = UILabel(text: NSLocalizedString("loginLabel", comment: ""))
    var signWithButtonView: LoginButtonView?
    var signUpButtonView: LoginButtonView?
    var loginButtonView: LoginButtonView?
    var loginStackView: UIStackView?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        signWithButtonView = LoginButtonView(button: signWithButton, label: signWithLabel)
        signUpButtonView = LoginButtonView(button: signUpButton, label: signUpLabel)
        loginButtonView = LoginButtonView(button: loginButton, label: loginLabel)
        loginStackView = UIStackView(subviews: [signWithButtonView!, signUpButtonView!, loginButtonView!], spacing: 40.0, axis: .vertical)
        
        guard loginStackView != nil else { return }
        
        self.view.addSubview(loginStackView!)
        self.view.addSubview(logoImageView)
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        loginStackView?.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 158),
            logoImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            loginStackView!.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 80),
            loginStackView!.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40),
            loginStackView!.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -40),
        ])
    }
}


//MARK: - UIKit+SwiftUI+Canvas
import SwiftUI

struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let vc = AuthViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return vc
        }
        
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
            
        }
    }
}


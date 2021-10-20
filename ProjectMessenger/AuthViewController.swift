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
    let loginButton = UIButton(title: NSLocalizedString("loginButton", comment: ""), titleColor: .white, backgroundColor: .black)
    let logoImageView = UIImageView(image: #imageLiteral(resourceName: "Logo"), contentMode: .scaleAspectFit)
    let signWithLabel = UILabel(text: NSLocalizedString("signWithLabel", comment: ""))
    let signUpLabel = UILabel(text: NSLocalizedString("signUpLabel", comment: ""))
    let loginLabel = UILabel(text: NSLocalizedString("loginLabel", comment: ""))


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
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


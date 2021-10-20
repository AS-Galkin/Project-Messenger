//
//  UIElementsTests.swift
//  ProjectMessengerTests
//
//  Created by Александр Галкин on 12.10.2021.
//

import XCTest
@testable import ProjectMessenger

class UIElementsTests: XCTestCase {
    
    var button: UIButton?
    var imageView: UIImageView?
    var label: UILabel?
    var buttonView: LoginButtonView?

    override func setUpWithError() throws {
        button = UIButton(title: "Foo", titleColor: .black, backgroundColor: .white, font: .boldSystemFont(ofSize: 20), isShadow: true, cornerRadius: 6)
        imageView = UIImageView(image: #imageLiteral(resourceName: "Sent"), contentMode: UIImageView.ContentMode.scaleAspectFit)
        label = UILabel(text: NSLocalizedString("signUpLabel", comment: ""))
        buttonView = LoginButtonView(button: button!, label: label!)
    }

    override func tearDownWithError() throws {
        button = nil
        imageView = nil
    }

    func testButton_ConvenienceInit_IsNotNill() {
        XCTAssertNotNil(button)
    }
    
    func testImageView_ConvenienceInit_isNotNill() {
        XCTAssertNotNil(imageView)
    }
    
    func testLabel_ConvenienceInit_isNotNill() {
        XCTAssertNotNil(label)
    }
    
    func testLocalization() {
        XCTAssertEqual(label?.text, "Or sign up with")
    }
    
    func testInitLoginButtonView() {
        XCTAssertNotNil(buttonView)
    }
    
    func testBaseConstraintsInLoginButtonViewIsActive() {
        guard let buttonConstraints = buttonView?.button?.constraints,
              let labelConstraints = buttonView?.label?.constraints else {
                  fatalError("Constraints is no active")
              }
        
        var bool: Int = 0
        
        for constraint in buttonConstraints {
            if constraint.isActive {
                bool += 1
            }
        }
        
        XCTAssert(bool != 0, "Constraints is ok")
    }
}

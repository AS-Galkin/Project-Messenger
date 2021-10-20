//
//  AuthViewControllerTests.swift
//  ProjectMessengerTests
//
//  Created by Александр Галкин on 12.10.2021.
//

import XCTest
@testable import ProjectMessenger

class AuthViewControllerTests: XCTestCase {

    var vc: AuthViewController?
    
    override func setUpWithError() throws {
        vc = AuthViewController()
    }

    override func tearDownWithError() throws {
        vc = nil
    }
    
    func testUIElementsViewIsCreated() {
        vc?.viewDidLoad()
        XCTAssertNotNil(vc?.signWithButton)
        XCTAssertNotNil(vc?.signUpButton)
        XCTAssertNotNil(vc?.loginButton)
        XCTAssertNotNil(vc?.logoImageView)
        XCTAssertNotNil(vc?.signUpLabel)
        XCTAssertNotNil(vc?.loginLabel)
        XCTAssertNotNil(vc?.signWithButtonView)
        XCTAssertNotNil(vc?.signUpButtonView)
        XCTAssertNotNil(vc?.loginButtonView)
        XCTAssertNotNil(vc?.loginStackView)
    }
    
    func testConstraintsIsCreated() {
        
    }
}

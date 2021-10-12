//
//  UIElementsTests.swift
//  ProjectMessengerTests
//
//  Created by Александр Галкин on 12.10.2021.
//

import XCTest


class UIElementsTests: XCTestCase {
    
    var button: UIButton?

    override func setUpWithError() throws {
        button = UIButton(title: "Foo", titleColor: .black, backgroundColor: .white)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testButton_ConvinienceInit_IsNotNill() throws {
        XCTAssertNotNil(button)
    }

}

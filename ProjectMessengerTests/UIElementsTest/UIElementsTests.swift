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

    override func setUpWithError() throws {
        button = UIButton(title: "Foo", titleColor: .black, backgroundColor: .white)
        imageView = UIImageView(image: #imageLiteral(resourceName: "Sent"), contentMode: UIImageView.ContentMode.scaleAspectFit)

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

}

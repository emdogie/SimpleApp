//
//  SimpleAppUITests.swift
//  SimpleAppUITests
//
//  Created by marek on 19.05.2019.
//  Copyright © 2019 Marek Garczewski. All rights reserved.
//

import XCTest

class SimpleAppUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testClickToDetailView() {
        
        let app = XCUIApplication()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["Astra"]/*[[".cells.staticTexts[\"Astra\"]",".staticTexts[\"Astra\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["SimpleApp.View"].buttons["Back"].tap()
        
    }
    
    func testAddOne() {
        
        let app = XCUIApplication()
        app.navigationBars["SimpleApp.TableView"].buttons["Add"].tap()
        
        let modelTextField = app.textFields["model"]
        modelTextField.tap()
        modelTextField.typeText("Toyota")
        
        let companyTextField = app.textFields["company"]
        companyTextField.tap()
        companyTextField.typeText("Yaris")
        
        let amountTextField = app.textFields["amount"]
        amountTextField.tap()
        amountTextField.typeText("10")
        
        app.buttons["Add"].tap()
        
        app.navigationBars["SimpleApp.View"].buttons["Back"].tap()
        
        let table = app.tables["mainTable"]
        XCTAssertEqual(table.cells.count, 3)
        
        
    }
    
    func testAddAndDelete() {
        
        let app = XCUIApplication()
        app.navigationBars["SimpleApp.TableView"].buttons["Add"].tap()
        
        let modelTextField = app.textFields["model"]
        modelTextField.tap()
        modelTextField.typeText("Toyota")
        
        let companyTextField = app.textFields["company"]
        companyTextField.tap()
        companyTextField.typeText("Yaris")
        
        let amountTextField = app.textFields["amount"]
        amountTextField.tap()
        amountTextField.typeText("10")
        
        app.buttons["Add"].tap()
        
        app.navigationBars["SimpleApp.View"].buttons["Back"].tap()
        
        let maintableTable = XCUIApplication().tables["mainTable"]
        maintableTable.staticTexts["Yaris"].swipeLeft()
        maintableTable/*@START_MENU_TOKEN@*/.buttons["Delete"]/*[[".cells.buttons[\"Delete\"]",".buttons[\"Delete\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        XCTAssertEqual(maintableTable.cells.count, 2)
        
    }

}

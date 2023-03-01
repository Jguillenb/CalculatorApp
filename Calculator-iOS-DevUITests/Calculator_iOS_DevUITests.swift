//
//  Calculator_iOS_DevUITests.swift
//  Calculator-iOS-DevUITests
//
//  Created by Konstantin Cherkashin on 17.10.2022.
//  Copyright © 2022 Grid Dynamics. All rights reserved.
//

import XCTest

class Calculator_iOS_DevUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    enum AccessibilityIdentifiers {
        enum EnumOperandsButtons: String, CaseIterable {
            case OneButton = "OneButton"
            case TwoButton = "TwoButton"
            case ThreeButton = "ThreeButton"
            case FourButton = "FourButton"
            case FiveButton = "FiveButton"
            case SixButton = "SixButton"
            case SevenButton = "SevenButton"
            case EightButton = "EightButton"
            case NineButton = "NineButton"
        }
        enum EnumOperatorButtons: String, CaseIterable {
            case PlusButton = "PlusButton"
            case MinusButton = "MinusButton"
            case TimesButton = "TimesButton"
            case DivButton = "DivButton"
            case EqualButton = "EqualButton"
            case DecimalButton = "DecimalButton"
        }
        enum EnumLabels: String, CaseIterable {
            case CWorkings = "CWorkings"
            case CResults = "CResults"
        }
        
    }
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }

    func testNumberButton() {
        
        let app = XCUIApplication()
        app.buttons["OneButton"].tap()
        app/*@START_MENU_TOKEN@*/.buttons["TwoButton"]/*[[".buttons[\"2\"]",".buttons[\"TwoButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["ThreeButton"]/*[[".buttons[\"3\"]",".buttons[\"ThreeButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["FourButton"]/*[[".buttons[\"4\"]",".buttons[\"FourButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["FiveButton"]/*[[".buttons[\"5\"]",".buttons[\"FiveButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["SixButton"]/*[[".buttons[\"6\"]",".buttons[\"SixButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["SevenButton"]/*[[".buttons[\"7\"]",".buttons[\"SevenButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["EightButton"]/*[[".buttons[\"8\"]",".buttons[\"EightButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["NineButton"]/*[[".buttons[\"9\"]",".buttons[\"NineButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["EqualButton"].tap()
        
        let cworkingsStaticText = app.staticTexts["CWorkings"].label
        let cresultsStaticText = app.staticTexts["CResults"].label
    
       // XCTAssertEqual(cworkingsStaticText, XCUIApplication().staticTexts["123456789"])
        
        XCTAssertEqual(cworkingsStaticText, cresultsStaticText)

    }
    
    func testOperatorButton() {
        
        let app = XCUIApplication()
        let onebuttonButton = app/*@START_MENU_TOKEN@*/.buttons["OneButton"]/*[[".buttons[\"1\"]",".buttons[\"OneButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        onebuttonButton.tap()
        app/*@START_MENU_TOKEN@*/.buttons["PlusButton"]/*[[".buttons[\"+\"]",".buttons[\"PlusButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        onebuttonButton.tap()
        app/*@START_MENU_TOKEN@*/.buttons["MinusButton"]/*[[".buttons[\"-\"]",".buttons[\"MinusButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        onebuttonButton.tap()
        app/*@START_MENU_TOKEN@*/.buttons["TimesButton"]/*[[".buttons[\"*\"]",".buttons[\"TimesButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        onebuttonButton.tap()
        app/*@START_MENU_TOKEN@*/.buttons["DivButton"]/*[[".buttons[\"\/\"]",".buttons[\"DivButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        onebuttonButton.tap()
        app.buttons["EqualButton"].tap()
        
        let cworkingsStaticText = app.staticTexts["CWorkings"].label
        let cresultsStaticText = app.staticTexts["CResults"].label
        
        XCTAssertEqual(cworkingsStaticText, "1+1-1*1/1")

    }
    
    func testDuplicateOperators() {
          // TODO: - add implementaion
        let app = XCUIApplication()
    
        let plusbuttonButton = app/*@START_MENU_TOKEN@*/.buttons["PlusButton"]/*[[".buttons[\"+\"]",".buttons[\"PlusButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        plusbuttonButton.tap()
        plusbuttonButton.tap()
        app/*@START_MENU_TOKEN@*/.buttons["MinusButton"]/*[[".buttons[\"-\"]",".buttons[\"MinusButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["TimesButton"]/*[[".buttons[\"*\"]",".buttons[\"TimesButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["DivButton"]/*[[".buttons[\"\/\"]",".buttons[\"DivButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let cworkingsStaticText = app.staticTexts["CWorkings"].label
        XCTAssertEqual(cworkingsStaticText, "/")
}
    
    func testDecimal() {
        
        let app = XCUIApplication()
        let decimalbuttonButton = app/*@START_MENU_TOKEN@*/.buttons["DecimalButton"]/*[[".buttons[\".\"]",".buttons[\"DecimalButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        decimalbuttonButton.tap()
       
        app
            .buttons["FiveButton"]
            .tap()
        
        app
        .staticTexts["+"]
            .tap()
        
        app
            .buttons["OneButton"]
            .tap()
        
        decimalbuttonButton.tap()
        decimalbuttonButton.tap()
        
        app
            .buttons["TwoButton"]
            .tap()
        
        let cworkingsStaticText = XCUIApplication()
            .staticTexts["CWorkings"].label
        
        XCTAssertEqual(cworkingsStaticText, ".5+1.2")
                
    }

}

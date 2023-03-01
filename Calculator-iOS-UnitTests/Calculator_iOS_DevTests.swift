//
//  Calculator_iOS_DevTests.swift
//  Calculator-iOS-DevTests
//
//  Created by Konstantin Cherkashin on 17.10.2022.
//  Copyright © 2022 Grid Dynamics. All rights reserved.
//

import XCTest

@testable import Calculator_iOS_Dev

class Calculator_iOS_DevTests: XCTestCase {
    
    var sut: MainViewController! = UIStoryboard(name: "MainViewController", bundle: nil)
        .instantiateViewController(withIdentifier: "MainViewController") as?  MainViewController
        
//    sut = UIStoryboard(name: "MainViewController", bundle: nil)
//        .instantiateViewController(withIdentifier: "MainViewController") as?  MainViewController
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut.loadView()
        
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }

    func testAddition() {
        // given
        let workings = sut.workings
        
        // when
        sut.fiveTap(workings)
        sut.plusTap(workings)
        sut.fiveTap(workings)
        sut.equalsTap(workings)
        let answer = sut.getCalculatorResults()
        
        // then
       XCTAssertEqual(answer, "10")
        
    }

    func testSubtraction() {
        // given
        let workings = sut.workings
    
        // when
        sut.fiveTap(workings)
        sut.minusTap(workings)
        sut.fiveTap(workings)
        sut.equalsTap(workings)
        let answer = sut.getCalculatorResults()
        
        // then
        XCTAssertEqual(answer, "0")
        
    }
    
    func testMultiplication() {
        let workings = sut.workings
    
        // when
        sut.fiveTap(workings)
        sut.timesTap(workings)
        sut.fiveTap(workings)
        sut.equalsTap(workings)
        let answer = sut.getCalculatorResults()
        
        // then
        XCTAssertEqual(answer, "25")
        
    }
    
    func testDivisinon() {
        let workings = sut.workings
        // when
        sut.fiveTap(workings)
        sut.divideTap(workings)
        sut.fiveTap(workings)
        sut.equalsTap(workings)
        let answer = sut.getCalculatorResults()
        // then
        XCTAssertEqual(answer, "1")
        
    }
    
    func testDoubleDecimal() {
        let workings = sut.workings
    
        // when
        sut.decimalTap(workings)
        sut.decimalTap(workings)
        sut.decimalTap(workings)
        let answer = sut.getCalculatorWorkings()
        
        // then
        XCTAssertEqual(answer, ".")
        
    }
    func testDoubleOperator() {
        let workings = sut.workings
    
        // when
        sut.timesTap(workings)
        sut.plusTap(workings)
        sut.minusTap(workings)
        sut.divideTap(workings)
        let answer = sut.getCalculatorWorkings()
        
        // then
        XCTAssertEqual(answer, "/")
        
    }
    func testDivByZero() {
        // gvien
        let workings = sut.workings
        
        // when
        sut.fiveTap(workings)
        sut.divideTap(workings)
        sut.zeroTap(workings)
        sut.equalsTap(workings)
        let answer = sut.getCalculatorResults()
        
        // then
        
        XCTAssertEqual(answer, "inf")
        
    }
    func testZeroDivByNumber() {
    // given
        let workings = sut.workings
        
        // when
        sut.zeroTap(workings)
        sut.divideTap(workings)
        sut.fiveTap(workings)
        sut.equalsTap(workings)
        let answer = sut.getCalculatorResults()
        
        // then
        XCTAssertEqual(answer, "0")
        
    }
    
    func testDecimalOperations() {
        // given
            let workings = sut.workings
            
            // when
        sut.zeroTap(workings)
        sut.decimalTap(workings)
        sut.fiveTap(workings)
        sut.timesTap(workings)
        sut.eightTap(workings)
        sut.equalsTap(workings)
        let answer = sut.getCalculatorResults()
            
            // then
        XCTAssertEqual(answer, "4")
    }
}

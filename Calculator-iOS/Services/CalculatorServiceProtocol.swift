//
//  CalculatorServiceProtocol.swift
//  Calculator-iOS
//
//  Created by Jorge Guillén on 20/09/22.
//  Copyright © 2022 Grid Dynamics. All rights reserved.
//

//  Requirements for calculator:
//  Calculator should support the following operations:
//    1. Clear last user input (backspace button).
//    2. Addition operation (with decimal places support)
//    3. Subtraction operation (with decimal places support)
//   4. Division operation (with decimal places support)
//    5. Division operation (with decimal places support)
//    6. Multiplication operation (with decimal places support)

import Foundation

enum Operand: String, CaseIterable {
    case plus = "+"
    case minus = "-"
    case times = "*"
    case divisor = "/"
}

enum SpecialOperands: Int {
    case dot = 1
    case clear = 2
    case whitespace = 3
    case compute = 4
}

protocol CalculatorServiceProtocol {
    var delegate: CalculatorServiceProtocolDelegate? { get set }

    func provideNumberInput(number: Int)
    func provideOperandInput(operand: Operand)
    func provideSpecialOperandInput(operand: SpecialOperands)
}

protocol CalculatorServiceProtocolDelegate: AnyObject {
    func onComputationDone(previousNumber: Int, currentNumber: Int, operand: Operand, result: Int)
    func clearScreen()
}

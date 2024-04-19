//
//  ArithmeticOperation.swift
//  BatCalculadora
//
//  Created by Alisson Inácio on 18/04/24.
//

import Foundation

enum ArithmeticOperation: CaseIterable, CustomStringConvertible{
    case addition, subtraction, multiplication, division
    
    var description: String{
        switch self{
        case .addition:
            return "+"
        case .subtraction:
            return "-"
        case .multiplication:
            return "x"
        case .division:
            return "÷"
        }
    }
}

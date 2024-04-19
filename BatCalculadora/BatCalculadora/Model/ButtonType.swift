//
//  ButtonType.swift
//  BatCalculadora
//
//  Created by Alisson Inácio on 18/04/24.
//

import Foundation
import SwiftUI

enum ButtonType: Hashable, CustomStringConvertible{
    case digit(_ digit: Digit)
    case operation(_ operation: ArithmeticOperation)
    case negative
    case percent
    case decimal
    case equals
    case allClear
    case clear
    
    var description: String{
        switch self{
        case .digit(let digit):
            return digit.description
        case .operation(let operation):
            return operation.description
        case .negative:
            return "±"
        case .percent:
            return "%"
        case .decimal:
            return "."
        case .equals:
            return "="
        case .allClear:
            return "AC"
        case .clear:
            return "C"
        }
    }
    
    var backgroundColor: Color{
        switch self{
        case .allClear, .clear, .negative, .percent:
            return Color("optionalColor")
        case .operation, .equals:
            return Color("operationColor")
        case .digit, .decimal:
            return Color("numberColor")
        }
    }
    
    var foregroundColor: Color{
        switch self {
        case .allClear, .clear, .negative, .percent, .equals, .operation:
            return .white
        default:
            return Color("operationColor")
        }
    }
}

//
//  Digit.swift
//  BatCalculadora
//
//  Created by Alisson Inácio on 18/04/24.
//

import Foundation

enum Digit: Int, CaseIterable, CustomStringConvertible{
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}

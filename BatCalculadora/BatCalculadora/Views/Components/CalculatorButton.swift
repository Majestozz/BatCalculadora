//
//  CalculatorButton.swift
//  BatCalculadora
//
//  Created by Alisson Inácio on 18/04/24.
//

import Foundation
import SwiftUI

extension BatCalculatorView{
    struct CalculatorButton: View{
        let buttonType: ButtonType
        @EnvironmentObject private var viewModel: ViewModel
        
        var body: some View{
            Button(buttonType.description){
                viewModel.performAction(for: buttonType)
            }
                .buttonStyle(CalculatorButtonStyle(
                    size:getButtonSize(),
                    backgroundColor: getBackgroundColor(),
                    foregroundColor: getForegroundColor(),
                    isWide: buttonType == .digit(.zero)))
        }
        private func getButtonSize() -> CGFloat{
            let screenWidth = UIScreen.main.bounds.width
            let buttonCount: CGFloat = 4.0
            let spacingCount = buttonCount + 1
            return(screenWidth - (spacingCount * Constants.padding)) / buttonCount
        }
        private func getBackgroundColor() -> Color{
            return viewModel.buttonTypeIsHighlighted(buttonType: buttonType) ? buttonType.foregroundColor : buttonType.backgroundColor
        }
        private func getForegroundColor() -> Color{
            return viewModel.buttonTypeIsHighlighted(buttonType: buttonType) ? buttonType.backgroundColor : buttonType.foregroundColor
        }
        }
    }

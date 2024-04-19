//
//  ContentView.swift
//  BatCalculadora
//
//  Created by Alisson Inácio on 12/04/24.
//

import SwiftUI

struct BatCalculatorView: View {
    
   
    
    var buttonTypes: [[ButtonType]]{
        [[.allClear, .negative, .percent, .operation(.division)],
         [.digit(.seven), .digit(.eight), .digit(.nine), .operation(.multiplication)],
         [.digit(.four), .digit(.five), .digit(.six), .operation(.subtraction)],
         [.digit(.one), .digit(.two), .digit(.three), .operation(.addition)],
         [.digit(.zero), .decimal, .equals]]
    }
    
    @EnvironmentObject private var viewModel: ViewModel
    
    var body: some View {
        VStack{
            Spacer()
            displayText
            buttonPad
        }
        .padding(Constants.padding)
            .background(Color("background"))
        }
    }

    #Preview {
        BatCalculatorView()
    }

extension BatCalculatorView{
    private var displayText: some View{
        Text(viewModel.displayText)
            .padding()
            .foregroundColor(Color("numberColor"))
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.system(size: 88, weight: .light))
            .lineLimit(1)//limite de linha
            .minimumScaleFactor(0.2)//ao adicionar mais numeros a fonte encolhe
    }
    
    private var buttonPad: some View{
        VStack(spacing: Constants.padding){
            ForEach(viewModel.buttonTypes, id: \.self){row in
                HStack(spacing: Constants.padding){
                    ForEach(row, id: \.self){buttonType in
                        CalculatorButton(buttonType: buttonType)
                    }
                }
            }
        }
    }
}

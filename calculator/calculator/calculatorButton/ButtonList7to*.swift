//
//  ButtonList4to*.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonList7to_: View {
    @EnvironmentObject var CalculatorDataSheet: CalculatorDataSheet
    
    var body: some View {
        HStack{
            Button(action:{
                CalculatorDataSheet.numberPad(inputNum: InputString.seven)
            }
            ){
                PadView(padNumber: InputString.seven)
            }
            Button(action:{
                CalculatorDataSheet.numberPad(inputNum: InputString.eight)
            }
            ){
                PadView(padNumber: InputString.eight)
            }
            Button(action:{
                CalculatorDataSheet.numberPad(inputNum: InputString.nine)
            }
            ){
                PadView(padNumber: InputString.nine)
            }
            Button(action:{
                CalculatorDataSheet.calculation(ooperator: Operator.multiply)
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(CalculatorDataSheet.isMultiply ? .white : .orange).overlay(Image(systemName: "multiply").foregroundColor(CalculatorDataSheet.isMultiply ? .orange : .white))
            }
        } // HStack
    } // body View
} // View

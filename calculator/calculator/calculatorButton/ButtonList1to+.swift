//
//  ButtonList1to+.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonList1to_: View {
    @EnvironmentObject var CalculatorDataSheet: CalculatorDataSheet
    
    var body: some View {
        HStack{
            Button(action:{
                CalculatorDataSheet.numberPad(inputNum: InputString.one)
            }
            ){
                PadView(padNumber: InputString.one)
            }
            Button(action:{
                CalculatorDataSheet.numberPad(inputNum: InputString.two)
            }
            ){
                PadView(padNumber: InputString.two)
            }
            Button(action:{
                CalculatorDataSheet.numberPad(inputNum: InputString.three)
            }
            ){
                PadView(padNumber: InputString.three)
            }
            Button(action:{
                CalculatorDataSheet.calculation(ooperator: Operator.plus)
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(CalculatorDataSheet.isPlus ? .white : .orange).overlay(Image(systemName: "plus").foregroundColor(CalculatorDataSheet.isPlus ? .orange : .white))
            }
        }
    }
}

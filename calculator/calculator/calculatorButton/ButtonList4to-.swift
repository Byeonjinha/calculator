//
//  ButtonList4to-.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonList4to_: View {
    @EnvironmentObject var CalculatorDataSheet: CalculatorDataSheet
    
    var body: some View {
        HStack{
            Button(action:{
                CalculatorDataSheet.numberPad(inputNum: InputString.four)
            }
            ){
                PadView(padNumber: InputString.four)
            }
            Button(action:{
                CalculatorDataSheet.numberPad(inputNum: InputString.five)

            }
            ){
                PadView(padNumber: InputString.five)
            }
            Button(action:{
                CalculatorDataSheet.numberPad(inputNum: InputString.six)
            }
            ){
                PadView(padNumber: InputString.six)
            }
            Button(action:{
                CalculatorDataSheet.calculation(ooperator: Operator.minus)
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(CalculatorDataSheet.isMinus ? .white : .orange).overlay(Image(systemName: "minus").foregroundColor(CalculatorDataSheet.isMinus ? .orange : .white))
            }
        }
    }
}

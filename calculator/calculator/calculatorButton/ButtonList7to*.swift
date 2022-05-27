//
//  ButtonList4to*.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonList7to_: View {
    @EnvironmentObject var CalculatorDataSheet: CalculatorDataSheet
    
    var stack : [InputString] = [ InputString.seven,InputString.eight,InputString.nine]
    var body: some View {
        HStack{
            ForEach(0..<3){ i in
                Button(action:{
                    CalculatorDataSheet.numberPad(inputNum: stack[i])
                }
                ){
                    PadView(padNumber: stack[i])
                }
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

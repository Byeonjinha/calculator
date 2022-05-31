//
//  ButtonList4to*.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonList7to_: View {
    @EnvironmentObject var CalculatorDataSheet: CalculatorDataSheet
    var numArray : [InputString] = [ ]
    var stack : [InputString] = [ InputString.seven,InputString.eight,InputString.nine]
    var body: some View {
        HStack(spacing: 10){
            ForEach(0..<4){ i in
                if i == 3 {
                    Button(action:{
                        CalculatorDataSheet.calculation(ooperator: InputString.multiply)
                    }
                    ){
                        Circle().foregroundColor(CalculatorDataSheet.isMultiply ? .white : .orange).overlay(Image(systemName: "multiply").foregroundColor(CalculatorDataSheet.isMultiply ? .orange : .white))
                    }
                }
                else{
                    Button(action:{
                         CalculatorDataSheet.numberPad(inputNum: stack[i])
                    }
                    ){
                        PadView(padNumber: stack[i])
                    }
                }
            }
        } // HStack
    } // body View
} // View

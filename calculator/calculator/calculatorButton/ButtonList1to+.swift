//
//  ButtonList1to+.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonList1to_: View {
    @EnvironmentObject var CalculatorDataSheet: CalculatorDataSheet
    
    var stack : [InputString] = [ InputString.one,InputString.two,InputString.three]
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
                CalculatorDataSheet.calculation(ooperator: Operator.plus)
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(CalculatorDataSheet.isPlus ? .white : .orange).overlay(Image(systemName: "plus").foregroundColor(CalculatorDataSheet.isPlus ? .orange : .white))
            }
        }
    }
}

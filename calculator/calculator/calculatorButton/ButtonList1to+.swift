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
        HStack(spacing: 10){
            ForEach(0..<4){ i in
                if i == 3 {
                    Button(action:{
                        CalculatorDataSheet.calculation(ooperator: InputString.plus)
                    }
                    ){
                        Circle().foregroundColor(CalculatorDataSheet.isPlus ? .white : .orange).overlay(Image(systemName: "plus").foregroundColor(CalculatorDataSheet.isPlus ? .orange : .white))
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
        }
    }
}

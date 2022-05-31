//
//  ButtonList4to-.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonList4to_: View {
    @EnvironmentObject var CalculatorDataSheet: CalculatorDataSheet
    
    var stack : [InputString] = [ InputString.four,InputString.five,InputString.six]
    var body: some View {
        HStack(spacing: 10){
            ForEach(0..<4){ i in
                if i == 3 {
                    Button(action:{
                        CalculatorDataSheet.calculation(ooperator: InputString.minus)
                    }
                    ){
                        Circle().foregroundColor(CalculatorDataSheet.isMinus ? .white : .orange).overlay(Image(systemName: "minus").foregroundColor(CalculatorDataSheet.isMinus ? .orange : .white))
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

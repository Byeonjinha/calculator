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
                CalculatorDataSheet.calculation(ooperator: Operator.minus)
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(CalculatorDataSheet.isMinus ? .white : .orange).overlay(Image(systemName: "minus").foregroundColor(CalculatorDataSheet.isMinus ? .orange : .white))
            }
        }
    }
}

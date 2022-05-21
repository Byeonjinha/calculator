//
//  ButtonListActo:.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonListActo_: View {
    @EnvironmentObject var CalculatorDataSheet : CalculatorDataSheet
    var body: some View {
        HStack{
            Button(action:{
                CalculatorDataSheet.viewNumS = "0"
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.indigo).overlay(Text("AC").foregroundColor(.white))
            }
            Button(action:{
                CalculatorDataSheet.viewNumS = String((Double(CalculatorDataSheet.viewNumS)!) * -1)
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.indigo).overlay(Image(systemName: "plus.forwardslash.minus").foregroundColor(.white))
            }
            Button(action:{
                if CalculatorDataSheet.viewNumS != "0"{
                    CalculatorDataSheet.viewNumS = String((Double(CalculatorDataSheet.viewNumS) ?? 0) / 100)
                }
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.indigo).overlay(Image(systemName:"percent").foregroundColor(.white))
            }
            Button(action:{
                CalculatorDataSheet.isDivide.toggle()
                CalculatorDataSheet.isPlus = false
                CalculatorDataSheet.isMinus = false
                CalculatorDataSheet.isMultiply = false
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor( CalculatorDataSheet.isDivide ?  .white : .orange ).overlay(Image(systemName: "divide").foregroundColor(CalculatorDataSheet.isDivide ?  .orange : .white))
            }
        }
    }
}

struct ButtonListActo__Previews: PreviewProvider {
    static var previews: some View {
        ButtonListActo_()
    }
}

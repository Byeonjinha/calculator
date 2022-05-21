//
//  ButtonList4to*.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonList7to_: View {
    @EnvironmentObject var CalculatorDataSheet : CalculatorDataSheet
    var body: some View {
        HStack{
            Button(action:{
                if CalculatorDataSheet.viewNumS == "0"{
                    CalculatorDataSheet.viewNumS = "7"
                }
                else{
                    CalculatorDataSheet.viewNumS += "7"
                }

            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("7").foregroundColor(.white))
            }
            Button(action:{
                if CalculatorDataSheet.viewNumS == "0"{
                    CalculatorDataSheet.viewNumS = "8"
                }
                else{
                    CalculatorDataSheet.viewNumS += "8"
                }

            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("8").foregroundColor(.white))
            }
            Button(action:{
                if CalculatorDataSheet.viewNumS == "0"{
                    CalculatorDataSheet.viewNumS = "9"
                }
                else{
                    CalculatorDataSheet.viewNumS += "9"
                }

            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("9").foregroundColor(.white))
            }
            Button(action:{
                CalculatorDataSheet.isDivide  = false
                CalculatorDataSheet.isPlus = false
                CalculatorDataSheet.isMinus = false
                CalculatorDataSheet.isMultiply.toggle()

            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(CalculatorDataSheet.isMultiply ? .white : .orange).overlay(Image(systemName: "multiply").foregroundColor(CalculatorDataSheet.isMultiply ? .orange : .white))
            }
        } // HStack
    } // body View
} // View

struct ButtonList7to__Previews: PreviewProvider {
    static var previews: some View {
        ButtonList7to_()
    }
}

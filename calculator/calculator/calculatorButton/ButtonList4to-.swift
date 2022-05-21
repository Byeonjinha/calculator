//
//  ButtonList4to-.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonList4to_: View {
    @EnvironmentObject var CalculatorDataSheet : CalculatorDataSheet
    var body: some View {
        HStack{
            Button(action:{
                if CalculatorDataSheet.viewNumS == "0"{
                    CalculatorDataSheet.viewNumS = "4"
                }
                else{
                    CalculatorDataSheet.viewNumS += "4"
                }

            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("4").foregroundColor(.white))
            }
            Button(action:{
                if CalculatorDataSheet.viewNumS == "0"{
                    CalculatorDataSheet.viewNumS = "5"
                }
                else{
                    CalculatorDataSheet.viewNumS += "5"
                }

            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("5").foregroundColor(.white))
            }
            Button(action:{
                if CalculatorDataSheet.viewNumS == "0"{
                    CalculatorDataSheet.viewNumS = "6"
                }
                else{
                    CalculatorDataSheet.viewNumS += "6"
                }
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("6").foregroundColor(.white))
            }
            Button(action:{
                CalculatorDataSheet.isDivide  = false
                CalculatorDataSheet.isPlus = false
                CalculatorDataSheet.isMinus.toggle()
                CalculatorDataSheet.isMultiply = false     }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(CalculatorDataSheet.isMinus ? .white : .orange).overlay(Image(systemName: "minus").foregroundColor(CalculatorDataSheet.isMinus ? .orange : .white))
            }
        }
    }
}

struct ButtonList4to__Previews: PreviewProvider {
    static var previews: some View {
        ButtonList4to_()
    }
}

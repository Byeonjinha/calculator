//
//  ButtonList1to+.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonList1to_: View {
    @EnvironmentObject var CalculatorDataSheet : CalculatorDataSheet
    var body: some View {
        HStack{
            Button(action:{
                if CalculatorDataSheet.viewNumS == "0"{
                    CalculatorDataSheet.viewNumS = "1"
                }
                else{
                    CalculatorDataSheet.viewNumS += "1"
                }
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("1").foregroundColor(.white))
            }
            Button(action:{
                if CalculatorDataSheet.viewNumS == "0"{
                    CalculatorDataSheet.viewNumS = "2"
                }
                else{
                    CalculatorDataSheet.viewNumS += "2"
                }
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("2").foregroundColor(.white))
            }
            Button(action:{
                if CalculatorDataSheet.viewNumS == "0"{
                    CalculatorDataSheet.viewNumS = "3"
                }
                else{
                    CalculatorDataSheet.viewNumS += "3"
                }
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("3").foregroundColor(.white))
            }
            Button(action:{
                CalculatorDataSheet.isDivide  = false
                CalculatorDataSheet.isPlus.toggle()
                CalculatorDataSheet.isMinus = false
                CalculatorDataSheet.isMultiply  = false

            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(CalculatorDataSheet.isPlus ? .white : .orange).overlay(Image(systemName: "plus").foregroundColor(CalculatorDataSheet.isPlus ? .orange : .white))
            }
        }
    }
}

struct ButtonList1to__Previews: PreviewProvider {
    static var previews: some View {
        ButtonList1to_()
    }
}

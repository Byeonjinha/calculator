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
                CalculatorDataSheet.isCalculation = false
                CalculatorDataSheet.isDivide  = false
                CalculatorDataSheet.isPlus = false
                CalculatorDataSheet.isMinus = false
                CalculatorDataSheet.isMultiply  = false
                CalculatorDataSheet.isAC = false
                CalculatorDataSheet.viewNumS = "0"
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.indigo).overlay( CalculatorDataSheet.isAC ? Text("C").foregroundColor(.white) : Text("AC").foregroundColor(.white))
            }
            Button(action:{
                if !CalculatorDataSheet.isCalculation { // 연산 중이 아니면
                    CalculatorDataSheet.viewNumS = String((Double(CalculatorDataSheet.viewNumS)!) * -1)
                }
                else {
                    CalculatorDataSheet.viewNumS2 = String((Double(CalculatorDataSheet.viewNumS2)!) * -1)
                }
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.indigo).overlay(Image(systemName: "plus.forwardslash.minus").foregroundColor(.white))
            }
            Button(action:{
                if !CalculatorDataSheet.isCalculation { // 연산 중이 아니면
                    if CalculatorDataSheet.viewNumS != "0"{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNumS = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNumS.components(separatedBy: [","]).joined())! / 100)!)
                    }
                }
                else{
                    if CalculatorDataSheet.viewNumS2 != "0"{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNumS2 = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNumS2.components(separatedBy: [","]).joined())! / 100)!)
                    }
                }
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.indigo).overlay(Image(systemName:"percent").foregroundColor(.white))
            }
            Button(action:{
                if !CalculatorDataSheet.isCalculation{ //연산 중이지 않을 때
                    CalculatorDataSheet.isCalculation = true
                    CalculatorDataSheet.isActCalculation = "divide"
                    CalculatorDataSheet.viewNumS2 = CalculatorDataSheet.viewNumS
                    let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
                        numberFormatter.maximumFractionDigits = 9
                    CalculatorDataSheet.isDivide = true
                    CalculatorDataSheet.isPlus = false
                    CalculatorDataSheet.isMinus = false
                    CalculatorDataSheet.isMultiply = false
                }
                
                
                else{  // 연산 중일 때
                    print(CalculatorDataSheet.isActCalculation,"divide 눌림")
                    let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
                        numberFormatter.maximumFractionDigits = 9
                    
                    CalculatorDataSheet.viewNumS = String(Double(CalculatorDataSheet.viewNumS.components(separatedBy: [","]).joined())! / Double(CalculatorDataSheet.viewNumS2.components(separatedBy: [","]).joined())!)
                    CalculatorDataSheet.viewNumS2 = CalculatorDataSheet.viewNumS
                    CalculatorDataSheet.isDivide = true
                    CalculatorDataSheet.isPlus = false
                    CalculatorDataSheet.isMinus = false
                    CalculatorDataSheet.isMultiply = false
                    CalculatorDataSheet.isFirstCalculation = false
                    
                }
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

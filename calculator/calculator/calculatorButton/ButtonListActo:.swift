//
//  ButtonListActo:.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonListActo_: View {
    @EnvironmentObject var CalculatorDataSheet: CalculatorDataSheet
    
    var body: some View {
        HStack{
            Button(action:{
                CalculatorDataSheet.isCalculation = false
                CalculatorDataSheet.isActCalculation = ""
                CalculatorDataSheet.isDivide  = false
                CalculatorDataSheet.isPlus = false
                CalculatorDataSheet.isMinus = false
                CalculatorDataSheet.isMultiply  = false
                CalculatorDataSheet.isAC = false
                CalculatorDataSheet.viewNum = "0"
                
                CalculatorDataSheet.viewNum2 = "0"
            }
            ){
                Circle()
                    .frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10)
                    .foregroundColor(.indigo)
                    .overlay( CalculatorDataSheet.isAC ?
                        Text("C")
                            .foregroundColor(.white) :
                        Text("AC")
                            .foregroundColor(.white))
            }
            Button(action:{
                if !CalculatorDataSheet.isCalculation { // 연산 중이 아니면
                    CalculatorDataSheet.viewNum = String((Double(CalculatorDataSheet.viewNum)!) * -1)
                }
                else {
                    CalculatorDataSheet.viewNum2 = String((Double(CalculatorDataSheet.viewNum2)!) * -1)
                }
            }
            ){
                Circle()
                    .frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10)
                    .foregroundColor(.indigo)
                    .overlay(Image(systemName: "plus.forwardslash.minus")
                        .foregroundColor(.white))
            }
            Button(action:{
                if !CalculatorDataSheet.isCalculation { // 연산 중이 아니면
                    if CalculatorDataSheet.viewNum != "0"{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNum = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined())! / 100)!)
                    }
                }
                else{
                    if CalculatorDataSheet.viewNum2 != "0"{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNum2 = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined())! / 100)!)
                    }
                }
            }
            ){
                Circle()
                    .frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10)
                    .foregroundColor(.indigo)
                    .overlay(Image(systemName:"percent")
                        .foregroundColor(.white))
            }
            Button(action:{
                CalculatorDataSheet.calculation(ooperator: "divide")
            }
            ){
                Circle()
                    .frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10)
                    .foregroundColor( CalculatorDataSheet.isDivide ?  .white : .orange )
                    .overlay(Image(systemName: "divide")
                        .foregroundColor(CalculatorDataSheet.isDivide ?  .orange : .white))
            }
        }
    }
}

struct ButtonListActo__Previews: PreviewProvider {
    static var previews: some View {
        ButtonListActo_()
    }
}

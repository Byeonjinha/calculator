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
        HStack(spacing:10){
            Button(action:{
                CalculatorDataSheet.isCalculation = false
                CalculatorDataSheet.isActCalculation = InputString.equal
                CalculatorDataSheet.isDivide  = false
                CalculatorDataSheet.isPlus = false
                CalculatorDataSheet.isMinus = false
                CalculatorDataSheet.isMultiply  = false
                CalculatorDataSheet.isAC = false
                CalculatorDataSheet.viewNum = "0"
                CalculatorDataSheet.isFirstCalculation = false
                CalculatorDataSheet.viewNum2 = "0"
            }
            ){
                Circle()
                    .foregroundColor(.indigo)
                    .overlay( CalculatorDataSheet.isAC ?
                        Text("C")
                            .font(Font.custom("Noteworthy", size: 30, relativeTo: .title))
                            .foregroundColor(.white) :
                        Text("AC")
                            .font(Font.custom("Noteworthy", size: 30, relativeTo: .title))
                            .foregroundColor(.white))
            }
            Button(action:{
                let numberFormatter = NumberFormatter()
                    numberFormatter.numberStyle = .decimal
                    numberFormatter.maximumFractionDigits = 9
                if !CalculatorDataSheet.isCalculation { // 연산 중이 아니면
                    CalculatorDataSheet.viewNum = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined())! * -1)!)
                }
                else {
                    if !CalculatorDataSheet.isFirstCalculation {
                        CalculatorDataSheet.isFirstCalculation = true
                        CalculatorDataSheet.viewNum2 = "-0"
                    
                    }
                    else{
                        CalculatorDataSheet.viewNum2 = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined())! * -1)!)
                    }
                  
                }
            }
            ){
                Circle()
                    .foregroundColor(.indigo)
                    .overlay(Image(systemName: "plus.forwardslash.minus")
                        .foregroundColor(.white))
            }
            Button(action:{
                if CalculatorDataSheet.isCalculation { // 연산 중이 아니면
                    if CalculatorDataSheet.viewNum2 != "0"{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNum2 = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined())! / 100)!)
                    }
                else{
                    if CalculatorDataSheet.viewNum != "0"{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNum = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined())! / 100)!)
                    }
                }
                }
            }
            ){
                Circle()
                    .foregroundColor(.indigo)
                    .overlay(Image(systemName:"percent")
                        .foregroundColor(.white))
            }
            Button(action:{
                CalculatorDataSheet.calculation(ooperator: InputString.divide)
            }
            ){
                Circle()
                    .foregroundColor( CalculatorDataSheet.isDivide ?  .white : .orange )
                    .overlay(Image(systemName: "divide")
                        .foregroundColor(CalculatorDataSheet.isDivide ?  .orange : .white))
            }
        }
    }
}

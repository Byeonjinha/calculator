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
                CalculatorDataSheet.afterViewNum = "0"
                CalculatorDataSheet.isFirstCalculation = false
                CalculatorDataSheet.previousViewNum = "0"
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
                    CalculatorDataSheet.afterViewNum = (numberFormatter.string(for: Double(CalculatorDataSheet.afterViewNum.components(separatedBy: [","]).joined())! * -1)!)
                }
                else {
                    if !CalculatorDataSheet.isFirstCalculation {
                        CalculatorDataSheet.isFirstCalculation = true
                        CalculatorDataSheet.previousViewNum = "-0"
                    
                    }
                    else{
                        CalculatorDataSheet.previousViewNum = (numberFormatter.string(for: Double(CalculatorDataSheet.previousViewNum.components(separatedBy: [","]).joined())! * -1)!)
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
                    if CalculatorDataSheet.previousViewNum != "0"{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.previousViewNum = (numberFormatter.string(for: Double(CalculatorDataSheet.previousViewNum.components(separatedBy: [","]).joined())! / 100)!)
                    }
                else{
                    if CalculatorDataSheet.afterViewNum != "0"{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.afterViewNum = (numberFormatter.string(for: Double(CalculatorDataSheet.afterViewNum.components(separatedBy: [","]).joined())! / 100)!)
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

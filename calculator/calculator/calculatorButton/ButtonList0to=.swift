//
//  ButtonList0to=.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonList0to_: View {
    @EnvironmentObject var CalculatorDataSheet: CalculatorDataSheet
    
    var body: some View {
        HStack(spacing:10){
            Button(action:{
                CalculatorDataSheet.numberPad(inputNum: InputString.zero)
            }
            ){
                RoundedRectangle(cornerSize: CGSize(width: UIScreen.main.bounds.size.width/5 * 3 , height: UIScreen.main.bounds.size.width/5 * 3))
                    .frame( width: UIScreen.main.bounds.size.width/4 * 2 , height : UIScreen.main.bounds.size.height / 10)
                    .foregroundColor(.gray)
                    .overlay(Text("0")
                        .font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                        .foregroundColor(.white))
            }
            Button(action:{
                CalculatorDataSheet.discrimination()
                CalculatorDataSheet.isAC = true
                if !CalculatorDataSheet.isCalculation { // 연산 중이 아니면
                    if !CalculatorDataSheet.viewNumC.contains(".") { // . 을 포함하고 있지 않으면
                    CalculatorDataSheet.viewNum += "."
                    }
                }
                else {
                    if !CalculatorDataSheet.viewNumC2.contains(".") {
                    CalculatorDataSheet.viewNum2 += "."
                    }
                }
            }){
                Circle()
                    .foregroundColor(.gray)
                    .overlay(
                        Text(".")
                            .font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                            .foregroundColor(.white))
            }
            Button(action:{
                let numberFormatter = NumberFormatter()
                    numberFormatter.numberStyle = .decimal
                    numberFormatter.maximumFractionDigits = 9
                var previousValue = Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined())!
                var afterValue = Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined())!
                if CalculatorDataSheet.isActCalculation == InputString.plus {
                    CalculatorDataSheet.viewNum = (numberFormatter.string(for: previousValue + afterValue)!)
                }
                else if CalculatorDataSheet.isActCalculation == InputString.minus {
                    CalculatorDataSheet.viewNum = (numberFormatter.string(for: previousValue - afterValue)!)
                }
                else if CalculatorDataSheet.isActCalculation == InputString.divide {
                    CalculatorDataSheet.viewNum = (numberFormatter.string(for: previousValue / afterValue)!)
                }
                else if CalculatorDataSheet.isActCalculation == InputString.multiply {
                    CalculatorDataSheet.viewNum = (numberFormatter.string(for: previousValue * afterValue)!)
                }
                CalculatorDataSheet.isCalculation = false
                CalculatorDataSheet.isFirstCalculation = false
            }
            ){
                Circle()
                    .foregroundColor(.orange).overlay(Image(systemName: "equal").foregroundColor(.white))
            }
        }
    }
}

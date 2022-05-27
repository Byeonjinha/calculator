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
        HStack{
            Button(action:{
                if CalculatorDataSheet.isCalculation{
                    if !CalculatorDataSheet.isFirstCalculation {  // 첫 연산 일 때
                        CalculatorDataSheet.isFirstCalculation = true // 다음은 첫 연산이 아니라고 명시
                        CalculatorDataSheet.viewNum2 = "0"
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.isPlus = false
                        CalculatorDataSheet.isMinus = false
                        CalculatorDataSheet.isMultiply = false
                        
                    }
                    else {   //첫 연산이 아닐 때
                        if CalculatorDataSheet.viewNum2 == "0"{
                            CalculatorDataSheet.viewNum2 = "0"
                        }
                        else{
                            let numberFormatter = NumberFormatter()
                                numberFormatter.numberStyle = .decimal
                                numberFormatter.maximumFractionDigits = 9
                            CalculatorDataSheet.viewNum2 = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined() + "0"))!)
                        }
                    }
                    
                    
        
                }
                else {  //연산 중 일 때
                    // 연산 중이 아닐 때
                    CalculatorDataSheet.isDivide = false
                    CalculatorDataSheet.isAC = true
                    if CalculatorDataSheet.viewNum == "0"{
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.viewNum = "0"
                    }
                    else{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNum = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined() + "0"))!)
                    }
                }
            }
            ){
                RoundedRectangle(cornerSize: CGSize(width: UIScreen.main.bounds.size.width/5 * 3 , height: UIScreen.main.bounds.size.width/5 * 3)).frame( width: UIScreen.main.bounds.size.width/5 * 2 , height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("0").foregroundColor(.white))
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
                    .frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10)
                    .foregroundColor(.gray)
                    .overlay(
                        Text(".")
                            .foregroundColor(.white))
            }
            Button(action:{
                let numberFormatter = NumberFormatter()
                    numberFormatter.numberStyle = .decimal
                    numberFormatter.maximumFractionDigits = 9
                if CalculatorDataSheet.isActCalculation == "plus" {
                    CalculatorDataSheet.viewNum = (numberFormatter.string(for:Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined())! + Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined())!)!)
                }
                else if CalculatorDataSheet.isActCalculation == "minus" {
                    CalculatorDataSheet.viewNum = (numberFormatter.string(for:Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined())! - Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined())!)!)
                }
                else if CalculatorDataSheet.isActCalculation == "divide" {
                    CalculatorDataSheet.viewNum = (numberFormatter.string(for:Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined())! / Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined())!)!)
                }
                else if CalculatorDataSheet.isActCalculation == "multiply" {
                    CalculatorDataSheet.viewNum = (numberFormatter.string(for:Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined())! * Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined())!)!)
                }
                CalculatorDataSheet.isCalculation = false
                CalculatorDataSheet.isFirstCalculation = false
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.orange).overlay(Image(systemName: "equal").foregroundColor(.white))
            }
        }
    }
}

struct ButtonList0to__Previews: PreviewProvider {
    static var previews: some View {
        ButtonList0to_()
    }
}

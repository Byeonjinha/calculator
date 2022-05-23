//
//  ButtonList0to=.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonList0to_: View {
    @EnvironmentObject var CalculatorDataSheet : CalculatorDataSheet
    var body: some View {
        HStack{
            Button(action:{
                print(CalculatorDataSheet.isActCalculation)
                if CalculatorDataSheet.isPlus {
                    CalculatorDataSheet.isActCalculation = "plus"
                }
                else if CalculatorDataSheet.isDivide {
                    CalculatorDataSheet.isActCalculation = "divide"
                }
                else if CalculatorDataSheet.isMinus {
                    CalculatorDataSheet.isActCalculation = "minus"
                }
                else if CalculatorDataSheet.isMultiply {
                    CalculatorDataSheet.isActCalculation = "multiply"
                }
                
                if !CalculatorDataSheet.isCalculation{  // 연산 중이 아닐 때
                    CalculatorDataSheet.isDivide = false
                    CalculatorDataSheet.isAC = true
                    if CalculatorDataSheet.viewNumS == "0"{
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.viewNumS = "0"
                    }
                    else{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNumS = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNumS.components(separatedBy: [","]).joined() + "0"))!)
                    }
                }
                else {  //연산 중 일 때
              
                    if !CalculatorDataSheet.isFirstCalculation {  // 첫 연산 일 때
                        CalculatorDataSheet.isFirstCalculation = true // 다음은 첫 연산이 아니라고 명시
                        CalculatorDataSheet.viewNumS2 = "0"
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.isPlus = false
                        CalculatorDataSheet.isMinus = false
                        CalculatorDataSheet.isMultiply = false
                        
                    }
                    else {   //첫 연산이 아닐 때
                        if CalculatorDataSheet.viewNumS2 == "0"{
                            CalculatorDataSheet.viewNumS2 = "0"
                        }
                        else{
                            let numberFormatter = NumberFormatter()
                                numberFormatter.numberStyle = .decimal
                                numberFormatter.maximumFractionDigits = 9
                            CalculatorDataSheet.viewNumS2 = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNumS2.components(separatedBy: [","]).joined() + "0"))!)
                        }
                    }
                }
            }
            ){
                RoundedRectangle(cornerSize: CGSize(width: UIScreen.main.bounds.size.width/5 * 3 , height: UIScreen.main.bounds.size.width/5 * 3)).frame( width: UIScreen.main.bounds.size.width/5 * 2 , height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("0").foregroundColor(.white))
            }
            Button(action:{
                print(CalculatorDataSheet.isActCalculation)
                if CalculatorDataSheet.isPlus {
                    CalculatorDataSheet.isActCalculation = "plus"
                }
                else if CalculatorDataSheet.isDivide {
                    CalculatorDataSheet.isActCalculation = "divide"
                }
                else if CalculatorDataSheet.isMinus {
                    CalculatorDataSheet.isActCalculation = "minus"
                }
                else if CalculatorDataSheet.isMultiply {
                    CalculatorDataSheet.isActCalculation = "multiply"
                }
                print(CalculatorDataSheet.isActCalculation)
                CalculatorDataSheet.isAC = true
                if !CalculatorDataSheet.isCalculation { // 연산 중이 아니면
                    if !CalculatorDataSheet.viewNumC.contains(".") { // . 을 포함하고 있지 않으면
                    CalculatorDataSheet.viewNumS += "."
                    }
                }
                else {
                    if !CalculatorDataSheet.viewNumC2.contains(".") {
                    CalculatorDataSheet.viewNumS2 += "."
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
                if CalculatorDataSheet.isActCalculation == "plus" {
                    CalculatorDataSheet.viewNumS = String(Double(CalculatorDataSheet.viewNumS.components(separatedBy: [","]).joined())! + Double(CalculatorDataSheet.viewNumS2.components(separatedBy: [","]).joined())!)
                }
                else if CalculatorDataSheet.isActCalculation == "minus" {
                    CalculatorDataSheet.viewNumS = String(Double(CalculatorDataSheet.viewNumS.components(separatedBy: [","]).joined())! - Double(CalculatorDataSheet.viewNumS2.components(separatedBy: [","]).joined())!)
                }
                else if CalculatorDataSheet.isActCalculation == "divide" {
                    CalculatorDataSheet.viewNumS = String(Double(CalculatorDataSheet.viewNumS.components(separatedBy: [","]).joined())! / Double(CalculatorDataSheet.viewNumS2.components(separatedBy: [","]).joined())!)
                }
                else if CalculatorDataSheet.isActCalculation == "multiply" {
                    CalculatorDataSheet.viewNumS = String(Double(CalculatorDataSheet.viewNumS.components(separatedBy: [","]).joined())! * Double(CalculatorDataSheet.viewNumS2.components(separatedBy: [","]).joined())!)
                }
                CalculatorDataSheet.isCalculation = false
                CalculatorDataSheet.isFirstCalculation = false
                print(CalculatorDataSheet.isActCalculation)
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

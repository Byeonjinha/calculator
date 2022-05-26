//
//  ButtonList4to-.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonList4to_: View {
    @EnvironmentObject var CalculatorDataSheet: CalculatorDataSheet
    
    var body: some View {
        HStack{
            Button(action:{
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
                    if CalculatorDataSheet.viewNum == "0"{
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.viewNum = "4"
                    }
                    else{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNum = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined() + "4"))!)
                    }
                }
                else {  //연산 중 일 때
              
                    if !CalculatorDataSheet.isFirstCalculation {  // 첫 연산 일 때
                        CalculatorDataSheet.isFirstCalculation = true // 다음은 첫 연산이 아니라고 명시
                        CalculatorDataSheet.viewNum2 = "4"
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.isPlus = false
                        CalculatorDataSheet.isMinus = false
                        CalculatorDataSheet.isMultiply = false
                        
                    }
                    else {   //첫 연산이 아닐 때
                        if CalculatorDataSheet.viewNum2 == "0"{
                            CalculatorDataSheet.viewNum2 = "4"
                        }
                        else{
                            let numberFormatter = NumberFormatter()
                                numberFormatter.numberStyle = .decimal
                                numberFormatter.maximumFractionDigits = 9
                            CalculatorDataSheet.viewNum2 = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined() + "4"))!)
                        }
                    }
                }

            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("4").foregroundColor(.white))
            }
            Button(action:{
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
                    if CalculatorDataSheet.viewNum == "0"{
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.viewNum = "5"
                    }
                    else{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNum = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined() + "5"))!)
                    }
                }
                else {  //연산 중 일 때
              
                    if !CalculatorDataSheet.isFirstCalculation {  // 첫 연산 일 때
                        CalculatorDataSheet.isFirstCalculation = true // 다음은 첫 연산이 아니라고 명시
                        CalculatorDataSheet.viewNum2 = "5"
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.isPlus = false
                        CalculatorDataSheet.isMinus = false
                        CalculatorDataSheet.isMultiply = false
                        
                    }
                    else {   //첫 연산이 아닐 때
                        if CalculatorDataSheet.viewNum2 == "0"{
                            CalculatorDataSheet.viewNum2 = "5"
                        }
                        else{
                            let numberFormatter = NumberFormatter()
                                numberFormatter.numberStyle = .decimal
                                numberFormatter.maximumFractionDigits = 9
                            CalculatorDataSheet.viewNum2 = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined() + "5"))!)
                        }
                    }
                }

            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("5").foregroundColor(.white))
            }
            Button(action:{
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
                    if CalculatorDataSheet.viewNum == "0"{
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.viewNum = "6"
                    }
                    else{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNum = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined() + "6"))!)
                    }
                }
                else {  //연산 중 일 때
              
                    if !CalculatorDataSheet.isFirstCalculation {  // 첫 연산 일 때
                        CalculatorDataSheet.isFirstCalculation = true // 다음은 첫 연산이 아니라고 명시
                        CalculatorDataSheet.viewNum2 = "6"
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.isPlus = false
                        CalculatorDataSheet.isMinus = false
                        CalculatorDataSheet.isMultiply = false
                        
                    }
                    else {   //첫 연산이 아닐 때
                        if CalculatorDataSheet.viewNum2 == "0"{
                            CalculatorDataSheet.viewNum2 = "6"
                        }
                        else{
                            let numberFormatter = NumberFormatter()
                                numberFormatter.numberStyle = .decimal
                                numberFormatter.maximumFractionDigits = 9
                            CalculatorDataSheet.viewNum2 = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined() + "6"))!)
                        }
                    }
                }
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("6").foregroundColor(.white))
            }
            Button(action:{
                if !CalculatorDataSheet.isCalculation{ //연산 중이지 않을 때
                    CalculatorDataSheet.isCalculation = true
                    CalculatorDataSheet.isActCalculation = "minus"
                    CalculatorDataSheet.viewNum2 = CalculatorDataSheet.viewNum
                    let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
                        numberFormatter.maximumFractionDigits = 9
                    CalculatorDataSheet.isDivide = false
                    CalculatorDataSheet.isPlus = false
                    CalculatorDataSheet.isMinus = true
                    CalculatorDataSheet.isMultiply = false
                }
                
                
                else{  // 연산 중일 때
                    CalculatorDataSheet.isCalculation = true
                    let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
                        numberFormatter.maximumFractionDigits = 9
                    
                    if CalculatorDataSheet.isCalculation  && CalculatorDataSheet.isActCalculation == "minus" {
                        
                    }else {
                        if CalculatorDataSheet.isActCalculation == "plus" {
                            CalculatorDataSheet.viewNum = String(Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined())! + Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined())!)
                        }
                        else if CalculatorDataSheet.isActCalculation == "minus" {
                            CalculatorDataSheet.viewNum = String(Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined())! - Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined())!)
                        }
                        else if CalculatorDataSheet.isActCalculation == "divide" {
                            CalculatorDataSheet.viewNum = String(Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined())! / Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined())!)
                        }
                        else if CalculatorDataSheet.isActCalculation == "multiply" {
                            CalculatorDataSheet.viewNum = String(Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined())! * Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined())!)
                        }
                    }
                    
                    CalculatorDataSheet.viewNum2 = CalculatorDataSheet.viewNum
                    CalculatorDataSheet.isDivide = false
                    CalculatorDataSheet.isPlus = false
                    CalculatorDataSheet.isMinus = true
                    CalculatorDataSheet.isMultiply = false
                    CalculatorDataSheet.isFirstCalculation = false
                    
                }    }
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

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
                        CalculatorDataSheet.viewNumS = "1"
                    }
                    else{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNumS = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNumS.components(separatedBy: [","]).joined() + "1"))!)
                    }
                }
                else {  //연산 중 일 때
              
                    if !CalculatorDataSheet.isFirstCalculation {  // 첫 연산 일 때
                        CalculatorDataSheet.isFirstCalculation = true // 다음은 첫 연산이 아니라고 명시
                        CalculatorDataSheet.viewNumS2 = "1"
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.isPlus = false
                        CalculatorDataSheet.isMinus = false
                        CalculatorDataSheet.isMultiply = false
                        
                    }
                    else {   //첫 연산이 아닐 때
                        if CalculatorDataSheet.viewNumS2 == "0"{
                            CalculatorDataSheet.viewNumS2 = "1"
                        }
                        else{
                            let numberFormatter = NumberFormatter()
                                numberFormatter.numberStyle = .decimal
                                numberFormatter.maximumFractionDigits = 9
                            CalculatorDataSheet.viewNumS2 = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNumS2.components(separatedBy: [","]).joined() + "1"))!)
                        }
                    }
                }
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("1").foregroundColor(.white))
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
                    if CalculatorDataSheet.viewNumS == "0"{
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.viewNumS = "2"
                    }
                    else{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNumS = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNumS.components(separatedBy: [","]).joined() + "2"))!)
                    }
                }
                else {  //연산 중 일 때
              
                    if !CalculatorDataSheet.isFirstCalculation {  // 첫 연산 일 때
                        CalculatorDataSheet.isFirstCalculation = true // 다음은 첫 연산이 아니라고 명시
                        CalculatorDataSheet.viewNumS2 = "2"
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.isPlus = false
                        CalculatorDataSheet.isMinus = false
                        CalculatorDataSheet.isMultiply = false
                        
                    }
                    else {   //첫 연산이 아닐 때
                        if CalculatorDataSheet.viewNumS2 == "0"{
                            CalculatorDataSheet.viewNumS2 = "2"
                        }
                        else{
                            let numberFormatter = NumberFormatter()
                                numberFormatter.numberStyle = .decimal
                                numberFormatter.maximumFractionDigits = 9
                            CalculatorDataSheet.viewNumS2 = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNumS2.components(separatedBy: [","]).joined() + "2"))!)
                        }
                    }
                }
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("2").foregroundColor(.white))
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
                    if CalculatorDataSheet.viewNumS == "0"{
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.viewNumS = "3"
                    }
                    else{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNumS = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNumS.components(separatedBy: [","]).joined() + "3"))!)
                    }
                }
                else {  //연산 중 일 때
              
                    if !CalculatorDataSheet.isFirstCalculation {  // 첫 연산 일 때
                        CalculatorDataSheet.isFirstCalculation = true // 다음은 첫 연산이 아니라고 명시
                        CalculatorDataSheet.viewNumS2 = "3"
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.isPlus = false
                        CalculatorDataSheet.isMinus = false
                        CalculatorDataSheet.isMultiply = false
                        
                    }
                    else {   //첫 연산이 아닐 때
                        if CalculatorDataSheet.viewNumS2 == "0"{
                            CalculatorDataSheet.viewNumS2 = "3"
                        }
                        else{
                            let numberFormatter = NumberFormatter()
                                numberFormatter.numberStyle = .decimal
                                numberFormatter.maximumFractionDigits = 9
                            CalculatorDataSheet.viewNumS2 = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNumS2.components(separatedBy: [","]).joined() + "3"))!)
                        }
                    }
                }
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("3").foregroundColor(.white))
            }
            Button(action:{
                if !CalculatorDataSheet.isCalculation{ //연산 중이지 않을 때
                    CalculatorDataSheet.isCalculation = true
                    CalculatorDataSheet.viewNumS2 = CalculatorDataSheet.viewNumS
                    let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
                        numberFormatter.maximumFractionDigits = 9
                    CalculatorDataSheet.isDivide = false
                    CalculatorDataSheet.isPlus = true
                    CalculatorDataSheet.isMinus = false
                    CalculatorDataSheet.isMultiply = false
                }
                
                
                else{  // 연산 중일 때
                    CalculatorDataSheet.isCalculation = true
                    let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
                        numberFormatter.maximumFractionDigits = 9
                    
                    if CalculatorDataSheet.isCalculation && CalculatorDataSheet.isActCalculation == "plus"{
                        
                    }else {
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
                    }
                    
                    CalculatorDataSheet.viewNumS2 = CalculatorDataSheet.viewNumS
                    CalculatorDataSheet.isDivide = false
                    CalculatorDataSheet.isPlus = true
                    CalculatorDataSheet.isMinus = false
                    CalculatorDataSheet.isMultiply = false
                    CalculatorDataSheet.isFirstCalculation = false
                    
                }
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

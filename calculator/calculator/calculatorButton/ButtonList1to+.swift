//
//  ButtonList1to+.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonList1to_: View {
    @EnvironmentObject var CalculatorDataSheet: CalculatorDataSheet
    
    var body: some View {
        HStack{
            Button(action:{
                CalculatorDataSheet.discrimination()

                if !CalculatorDataSheet.isCalculation{  // 연산 중이 아닐 때
                    CalculatorDataSheet.isDivide = false
                    CalculatorDataSheet.isAC = true
                    if CalculatorDataSheet.viewNum == "0"{
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.viewNum = "1"
                    }
                    else{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNum = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined() + "1"))!)
                    }
                }
                else {  //연산 중 일 때
              
                    if !CalculatorDataSheet.isFirstCalculation {  // 첫 연산 일 때
                        CalculatorDataSheet.isFirstCalculation = true // 다음은 첫 연산이 아니라고 명시
                        CalculatorDataSheet.viewNum2 = "1"
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.isPlus = false
                        CalculatorDataSheet.isMinus = false
                        CalculatorDataSheet.isMultiply = false
                        
                    }
                    else {   //첫 연산이 아닐 때
                        if CalculatorDataSheet.viewNum2 == "0"{
                            CalculatorDataSheet.viewNum2 = "1"
                        }
                        else{
                            let numberFormatter = NumberFormatter()
                                numberFormatter.numberStyle = .decimal
                                numberFormatter.maximumFractionDigits = 9
                            CalculatorDataSheet.viewNum2 = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined() + "1"))!)
                        }
                    }
                }
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("1").foregroundColor(.white))
            }
            Button(action:{
                CalculatorDataSheet.discrimination()
                
                if !CalculatorDataSheet.isCalculation{  // 연산 중이 아닐 때
                    CalculatorDataSheet.isDivide = false
                    CalculatorDataSheet.isAC = true
                    if CalculatorDataSheet.viewNum == "0"{
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.viewNum = "2"
                    }
                    else{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNum = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined() + "2"))!)
                    }
                }
                else {  //연산 중 일 때
              
                    if !CalculatorDataSheet.isFirstCalculation {  // 첫 연산 일 때
                        CalculatorDataSheet.isFirstCalculation = true // 다음은 첫 연산이 아니라고 명시
                        CalculatorDataSheet.viewNum2 = "2"
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.isPlus = false
                        CalculatorDataSheet.isMinus = false
                        CalculatorDataSheet.isMultiply = false
                        
                    }
                    else {   //첫 연산이 아닐 때
                        if CalculatorDataSheet.viewNum2 == "0"{
                            CalculatorDataSheet.viewNum2 = "2"
                        }
                        else{
                            let numberFormatter = NumberFormatter()
                                numberFormatter.numberStyle = .decimal
                                numberFormatter.maximumFractionDigits = 9
                            CalculatorDataSheet.viewNum2 = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined() + "2"))!)
                        }
                    }
                }
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("2").foregroundColor(.white))
            }
            Button(action:{
                CalculatorDataSheet.discrimination()
                
                if !CalculatorDataSheet.isCalculation{  // 연산 중이 아닐 때
                    CalculatorDataSheet.isDivide = false
                    CalculatorDataSheet.isAC = true
                    if CalculatorDataSheet.viewNum == "0"{
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.viewNum = "3"
                    }
                    else{
                        let numberFormatter = NumberFormatter()
                            numberFormatter.numberStyle = .decimal
                            numberFormatter.maximumFractionDigits = 9
                        CalculatorDataSheet.viewNum = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum.components(separatedBy: [","]).joined() + "3"))!)
                    }
                }
                else {  //연산 중 일 때
              
                    if !CalculatorDataSheet.isFirstCalculation {  // 첫 연산 일 때
                        CalculatorDataSheet.isFirstCalculation = true // 다음은 첫 연산이 아니라고 명시
                        CalculatorDataSheet.viewNum2 = "3"
                        CalculatorDataSheet.isDivide = false
                        CalculatorDataSheet.isPlus = false
                        CalculatorDataSheet.isMinus = false
                        CalculatorDataSheet.isMultiply = false
                        
                    }
                    else {   //첫 연산이 아닐 때
                        if CalculatorDataSheet.viewNum2 == "0"{
                            CalculatorDataSheet.viewNum2 = "3"
                        }
                        else{
                            let numberFormatter = NumberFormatter()
                                numberFormatter.numberStyle = .decimal
                                numberFormatter.maximumFractionDigits = 9
                            CalculatorDataSheet.viewNum2 = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNum2.components(separatedBy: [","]).joined() + "3"))!)
                        }
                    }
                }
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("3").foregroundColor(.white))
            }
            Button(action:{
                CalculatorDataSheet.calculation(ooperator: "plus")
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

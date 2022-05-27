//
//  MemoData.swift
//  memoApp (iOS)
//
//  Created by Byeon jinha on 2022/04/30.
//

import Foundation

final class CalculatorDataSheet: ObservableObject{
    @Published var viewNum = "0" {
           didSet {
               viewNumC = Array(viewNum)
           }
       }
    @Published var viewNum2 = "0" {
         didSet {
             viewNumC2 = Array(viewNum2)
         }
     }
    
    @Published var isPlus = false
    @Published var isMinus = false
    @Published var isMultiply = false
    @Published var isDivide = false
    @Published var isCalculation = false
    @Published var isFirstCalculation = false
    @Published var isAC = false
    @Published var isActCalculation = Operator.equal
    @Published var viewNumC : [Character] = ["0"]
    @Published var viewNumC2 : [Character] = ["0"]
    func discrimination()-> String{
        if isPlus {
            return "plus"
        }
        else if isDivide {
            return "divide"
        }
        else if isMinus {
            return "minus"
        }
        else if isMultiply {
            return "multiply"
        }
        return "R"
    }
    
    func calculation(ooperator: Operator) {
            if !isCalculation {  //연산 중이지 않을 때
                isCalculation = true
                isActCalculation = ooperator
                viewNum2 = viewNum
                let numberFormatter = NumberFormatter()
                    numberFormatter.numberStyle = .decimal
                    numberFormatter.maximumFractionDigits = 9
                isDivide = ooperator == Operator.divide ? true : false
                isPlus = ooperator == Operator.plus ? true : false
                isMinus = ooperator == Operator.minus ? true : false
                isMultiply = ooperator == Operator.multiply ? true : false
            }
            else{  // 연산 중일 때
                isCalculation = true
                let numberFormatter = NumberFormatter()
                    numberFormatter.numberStyle = .decimal
                    numberFormatter.maximumFractionDigits = 9
                if isCalculation && isActCalculation == ooperator {
                }else {
                    if isActCalculation == Operator.plus {
                        viewNum = String(Double(viewNum.components(separatedBy: [","]).joined())! + Double(viewNum2.components(separatedBy: [","]).joined())!)
                    }
                    else if isActCalculation == Operator.minus {
                        viewNum = String(Double(viewNum.components(separatedBy: [","]).joined())! - Double(viewNum2.components(separatedBy: [","]).joined())!)
                    }
                    else if isActCalculation == Operator.divide {
                        viewNum = String(Double(viewNum.components(separatedBy: [","]).joined())! / Double(viewNum2.components(separatedBy: [","]).joined())!)
                    }
                    else if isActCalculation == Operator.multiply {
                        viewNum = String(Double(viewNum.components(separatedBy: [","]).joined())! * Double(viewNum2.components(separatedBy: [","]).joined())!)
                    }
                }
                viewNum2 = viewNum
                isDivide = ooperator == Operator.divide ? true : false
                isPlus = ooperator == Operator.plus ? true : false
                isMinus = ooperator == Operator.minus ? true : false
                isMultiply = ooperator == Operator.multiply ? true : false
                isFirstCalculation = false
            }
    }
    
  
}
enum Operator: Int {
    case equal
    case plus
    case divide
    case minus
    case multiply
}

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
    @Published var isActCalculation = InputString.equal
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
    func numberPad (inputNum: InputString) {
        discrimination()
        if isCalculation{
            if !isFirstCalculation {  // 첫 연산 일 때
                isFirstCalculation = true // 다음은 첫 연산이 아니라고 명시
                viewNum2 = String(inputNum.rawValue)
                isDivide = false
                isPlus = false
                isMinus = false
                isMultiply = false
            }
            else {   //첫 연산이 아닐 때
                if viewNum2 == "0"{
                    viewNum2 = String(inputNum.rawValue)
                }
                else{
                    let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
                        numberFormatter.maximumFractionDigits = 9
                    viewNum2 = (numberFormatter.string(for: Double(viewNum2.components(separatedBy: [","]).joined() + String(inputNum.rawValue)))!)
                }
            }
        }
        else {  //연산 중 일 때
            // 연산 중이 아닐 때
            isDivide = false
            isAC = true
            if viewNum == "0"{
                isDivide = false
                viewNum = String(inputNum.rawValue)
            }
            else{
                let numberFormatter = NumberFormatter()
                    numberFormatter.numberStyle = .decimal
                    numberFormatter.maximumFractionDigits = 9
                viewNum = (numberFormatter.string(for: Double(viewNum.components(separatedBy: [","]).joined() + String(inputNum.rawValue)))!)
            }
        }
    }
    func calculation(ooperator: InputString) {
            if !isCalculation {  //연산 중이지 않을 때
                isCalculation = true
                isActCalculation = ooperator
                viewNum2 = viewNum
                isDivide = ooperator == InputString.divide ? true : false
                isPlus = ooperator == InputString.plus ? true : false
                isMinus = ooperator == InputString.minus ? true : false
                isMultiply = ooperator == InputString.multiply ? true : false
            }
            else{  // 연산 중일 때
                isCalculation = true
                let numberFormatter = NumberFormatter()
                    numberFormatter.numberStyle = .decimal
                    numberFormatter.maximumFractionDigits = 9
                if isCalculation && isActCalculation == ooperator {
                }else {
                    var previousValue = Double(viewNum.components(separatedBy: [","]).joined())!
                    var afterValue = Double(viewNum2.components(separatedBy: [","]).joined())!
                    
                    if isActCalculation == InputString.plus {
                        viewNum = numberFormatter.string(for : previousValue + afterValue)!
                    }
                    else if isActCalculation == InputString.minus {
                        viewNum = numberFormatter.string(for : previousValue - afterValue)!
                    }
                    else if isActCalculation == InputString.divide {
                        viewNum = numberFormatter.string(for : previousValue / afterValue)!
                    }
                    else if isActCalculation == InputString.multiply {
                        viewNum = numberFormatter.string(for : previousValue * afterValue)!
                    }
                }
                viewNum2 = viewNum
                isDivide = ooperator == InputString.divide ? true : false
                isPlus = ooperator == InputString.plus ? true : false
                isMinus = ooperator == InputString.minus ? true : false
                isMultiply = ooperator == InputString.multiply ? true : false
                isFirstCalculation = false
            }
    }
    
  
}



enum InputString: Int {
    case zero = 0
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case equal
    case plus
    case divide
    case minus
    case multiply
}



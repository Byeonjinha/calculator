//
//  MemoData.swift
//  memoApp (iOS)
//
//  Created by Byeon jinha on 2022/04/30.

import Foundation

final class CalculatorDataSheet: ObservableObject{
    @Published var previousViewNum = "0" {
           didSet {
               viewNumC = Array(afterViewNum)
           }
       }
    @Published var afterViewNum = "0" {
         didSet {
             viewNumC2 = Array(previousViewNum)
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
        if isCalculation {
            if isFirstCalculation {  // 첫 연산 일 때
                guard previousViewNum == "0" else {
                    let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
                        numberFormatter.maximumFractionDigits = 9
                    previousViewNum = (numberFormatter.string(for: Double(previousViewNum.components(separatedBy: [","]).joined() + String(inputNum.rawValue)))!)
                    return
                }
                previousViewNum = String(inputNum.rawValue)
            }
            else {   //첫 연산이 아닐 때
                isFirstCalculation = true // 다음은 첫 연산이 아니라고 명시
                previousViewNum = String(inputNum.rawValue)
                isDivide = false
                isPlus = false
                isMinus = false
                isMultiply = false
            }
        }
        else {  //연산 중 일 때
            // 연산 중이 아닐 때
            isDivide = false
            isAC = true
            if afterViewNum == "0"{
                isDivide = false
                afterViewNum = String(inputNum.rawValue)
            }
            else{
                let numberFormatter = NumberFormatter()
                    numberFormatter.numberStyle = .decimal
                    numberFormatter.maximumFractionDigits = 9
                afterViewNum = (numberFormatter.string(for: Double(afterViewNum.components(separatedBy: [","]).joined() + String(inputNum.rawValue)))!)
            }
        }
    }
    func calculation(ooperator: InputString) {
            if isCalculation {  //연산 중이지 않을 때
                
                isCalculation = true
                let numberFormatter = NumberFormatter()
                    numberFormatter.numberStyle = .decimal
                    numberFormatter.maximumFractionDigits = 9
                if isCalculation && isActCalculation == ooperator {
                }else {
                    var previousValue = Double(afterViewNum.components(separatedBy: [","]).joined())!
                    var afterValue = Double(previousViewNum.components(separatedBy: [","]).joined())!
                    
                    if isActCalculation == InputString.plus {
                        afterViewNum = numberFormatter.string(for : previousValue + afterValue)!
                    }
                    else if isActCalculation == InputString.minus {
                        afterViewNum = numberFormatter.string(for : previousValue - afterValue)!
                    }
                    else if isActCalculation == InputString.divide {
                        afterViewNum = numberFormatter.string(for : previousValue / afterValue)!
                    }
                    else if isActCalculation == InputString.multiply {
                        afterViewNum = numberFormatter.string(for : previousValue * afterValue)!
                    }
                }
                previousViewNum = afterViewNum
                isDivide = ooperator == InputString.divide ? true : false
                isPlus = ooperator == InputString.plus ? true : false
                isMinus = ooperator == InputString.minus ? true : false
                isMultiply = ooperator == InputString.multiply ? true : false
                isFirstCalculation = false
            }
            else{  // 연산 중일 때
                isCalculation = true
                isActCalculation = ooperator
                previousViewNum = afterViewNum
                isDivide = ooperator == InputString.divide ? true : false
                isPlus = ooperator == InputString.plus ? true : false
                isMinus = ooperator == InputString.minus ? true : false
                isMultiply = ooperator == InputString.multiply ? true : false
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



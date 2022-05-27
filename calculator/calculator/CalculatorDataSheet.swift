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
    @Published var isActCalculation = ""
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
    
    enum Operator: String {
    case plus = "plus"
    case divide = "devide"
    case minus = "minus"
    case multiply = "multiply"
}
}

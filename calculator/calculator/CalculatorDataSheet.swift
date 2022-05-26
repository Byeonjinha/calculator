//
//  MemoData.swift
//  memoApp (iOS)
//
//  Created by Byeon jinha on 2022/04/30.
//

import Foundation

final class CalculatorDataSheet: ObservableObject{
    @Published var viewNum : String = "0" {
        didSet {
            viewNumC = Array(viewNum)
        }
    }
    @Published var viewNum2 : String = "0" {
        didSet {
            viewNumC2 = Array(viewNum2)
        }
    }

    @Published var isPlus : Bool = false 
    @Published var isMinus : Bool = false
    @Published var isMultiply : Bool = false
    @Published var isDivide : Bool = false
    
    @Published var isCalculation : Bool = false
    @Published var isFirstCalculation : Bool = false
    @Published var isAC : Bool = false
    @Published var isActCalculation : String = ""
    @Published var viewNumC : [Character] = ["0"]
    @Published var viewNumC2 : [Character] = ["0"]
}

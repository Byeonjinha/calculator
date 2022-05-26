//
//  MemoData.swift
//  memoApp (iOS)
//
//  Created by Byeon jinha on 2022/04/30.
//

import Foundation

final class CalculatorDataSheet: ObservableObject{
    @Published var viewNumS : String = "0" {
        didSet {
            viewNumC = Array(viewNumS)
        }
    }
    @Published var viewNumS2 : String = "0" {
        didSet {
            viewNumC2 = Array(viewNumS2)
        }
    }
    @Published var viewNum : Double = 0 {
        didSet {
            viewNumS = String(viewNum)
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

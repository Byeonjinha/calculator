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
}

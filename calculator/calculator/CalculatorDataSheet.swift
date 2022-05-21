//
//  MemoData.swift
//  memoApp (iOS)
//
//  Created by Byeon jinha on 2022/04/30.
//

import Foundation

final class CalculatorDataSheet : ObservableObject{
 
    @Published var MemoData : [MemoList] = [

    ]
    @Published var contentList : [String] = [
        ]
    @Published var viewNumS : String = "0" {
        didSet {
            viewNumC = Array(viewNumS)
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
    @Published var viewNumC : [Character] = ["0"]
}

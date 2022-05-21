//
//  calculatorApp.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

@main
struct calculatorApp: App {
    @StateObject private var MemoData = CalculatorDataSheet()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(MemoData)
        }
    }
}

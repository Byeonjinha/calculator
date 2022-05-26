//
//  ContentView.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
        Rectangle()
            VStack{
            
                CaculatedPage()
                ButtonListActo_()
                ButtonList7to_()
                ButtonList4to_()
                ButtonList1to_()
                ButtonList0to_()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

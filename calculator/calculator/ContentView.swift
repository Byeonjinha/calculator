//
//  ContentView.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI



struct MemoList : Identifiable, Equatable,Hashable {
    
    var id = UUID()
    var content : String
    var secretBool : Bool
    var secretBool2 : Bool
    var secretBool3 : Bool
    var secretBool4 : Bool
    var secretBool5 : Bool
    var password2 : String
    var password1 : String
  
}



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

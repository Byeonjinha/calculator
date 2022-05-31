//
//  CaculatedPage.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct CalculatedPage: View {
    @EnvironmentObject var CalculatorDataSheet: CalculatorDataSheet
    
    var body: some View {
        VStack(){
            HStack{
                Text(CalculatorDataSheet.isCalculation ?  CalculatorDataSheet.viewNum2: CalculatorDataSheet.viewNum)
                    .font(Font.custom("Noteworthy", size: 60, relativeTo: .title))
                    .foregroundColor(.white)
                    .padding()
                                  }
            .frame(width : UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height / 3, alignment: .bottomTrailing)
        }
    }
}

struct CaculatedPage_Previews: PreviewProvider {
    static var previews: some View {
        CalculatedPage()
    }
}

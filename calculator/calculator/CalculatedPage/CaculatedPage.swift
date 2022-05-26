//
//  CaculatedPage.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct CaculatedPage: View {
   
    @EnvironmentObject var CalculatorDataSheet : CalculatorDataSheet
    var body: some View {
        VStack(){
            HStack{
//                Text(CalculatorDataSheet.isCalculation ?  CalculatorDataSheet.viewNumS2+" V2 "+CalculatorDataSheet.viewNumS : CalculatorDataSheet.viewNumS+" V1 "+CalculatorDataSheet.viewNumS2)
                Text(CalculatorDataSheet.isCalculation ?  CalculatorDataSheet.viewNumS2: CalculatorDataSheet.viewNumS)
                    .foregroundColor(.white)
                                  }
            .frame(width : UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height / 3, alignment: .bottomTrailing)
        }
    }
}

struct CaculatedPage_Previews: PreviewProvider {
    static var previews: some View {
        CaculatedPage()
    }
}

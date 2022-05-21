//
//  ButtonList0to=.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/20.
//

import SwiftUI

struct ButtonList0to_: View {
    @EnvironmentObject var CalculatorDataSheet : CalculatorDataSheet
    var body: some View {
        HStack{
            Button(action:{
                print(CalculatorDataSheet.viewNumS)
                if CalculatorDataSheet.viewNumS != "0"{
                    let numberFormatter = NumberFormatter()
                        numberFormatter.numberStyle = .decimal
                        numberFormatter.maximumFractionDigits = 9
                    print(CalculatorDataSheet.viewNumS)
                    CalculatorDataSheet.viewNumS = (numberFormatter.string(for: Double(CalculatorDataSheet.viewNumS.components(separatedBy: [","]).joined() + "0"))!)
                }
            }
            ){
                RoundedRectangle(cornerSize: CGSize(width: UIScreen.main.bounds.size.width/5 * 3 , height: UIScreen.main.bounds.size.width/5 * 3)).frame( width: UIScreen.main.bounds.size.width/5 * 2 , height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text("0").foregroundColor(.white))
            }
            Button(action:{
                if !CalculatorDataSheet.viewNumC.contains(".") {
                    CalculatorDataSheet.viewNumS += "."
                }
            }){
                Circle()
                    .frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10)
                    .foregroundColor(.gray)
                    .overlay(
                        Text(".")
                            .foregroundColor(.white))
            }
            Button(action:{
                
            }
            ){
                Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.orange).overlay(Image(systemName: "equal").foregroundColor(.white))
            }
        }
    }
}

struct ButtonList0to__Previews: PreviewProvider {
    static var previews: some View {
        ButtonList0to_()
    }
}

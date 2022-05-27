//
//  PadView.swift
//  calculator
//
//  Created by Byeon jinha on 2022/05/28.
//

import SwiftUI

struct PadView: View {
    var padNumber: InputString
    var body: some View {
        Circle().frame( width: UIScreen.main.bounds.size.width /  5, height : UIScreen.main.bounds.size.height / 10).foregroundColor(.gray).overlay(Text(String(padNumber.rawValue)).foregroundColor(.white))
    }
}

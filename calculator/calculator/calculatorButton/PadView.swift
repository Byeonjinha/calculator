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
        Circle()
            .foregroundColor(.gray)
            .overlay(
                Text(String(padNumber.rawValue))
                    .font(Font.custom("Noteworthy", size: 30, relativeTo: .title))
                .foregroundColor(.white))
    }
}

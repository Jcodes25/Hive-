//
//  HexagonTextView.swift
//  HiveFlow
//
//  Created by Jordan Barconey on 2/16/23.
//

import SwiftUI

struct HexagonTextView: View {
    var hexText: String
    var hexColor: Color
    var body: some View {
        Image("HiveHexagon")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .foregroundColor(hexColor)
            .frame(width: 200.0, height: 200.0)
            .overlay(Text(hexText)
            .italic())
            .font(.custom("Futura", size:24))
            .foregroundColor(Color.fontColor)
    }
}

struct HexagonTextView_Previews: PreviewProvider {
    static var previews: some View {
        HexagonTextView(hexText: "Existing Actions", hexColor: .hiveLavender)
    }
}

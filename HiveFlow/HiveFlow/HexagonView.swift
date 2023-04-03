//
//  HexagonView.swift
//  HiveFlow
//
//  Created by Jordan Barconey on 2/7/23.
//

import SwiftUI

struct HexagonView: View {
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
            .font(.custom("Futura", size:48))
            .foregroundColor(Color.fontColor)
    }
}

struct HexagonView_Previews: PreviewProvider {
    static var previews: some View {
        HexagonView(hexText: "Hive", hexColor: .hiveYellow)
        HexagonView(hexText: "Join", hexColor: .hiveLavender)
            .preferredColorScheme(.light)
    }
}

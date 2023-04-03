//
//  HexagonDarkView.swift
//  HiveFlow
//
//  Created by Jordan Barconey on 2/16/23.
//

import SwiftUI

struct HexagonDarkView: View {
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
            .foregroundColor(Color.fontColorDark)
    }
}
    
struct HexagonDarkView_Previews: PreviewProvider {
    static var previews: some View {
        HexagonDarkView(hexText: "Hive", hexColor: .hiveYellowDark)
    }
}

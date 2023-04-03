//
//  YourActionsView.swift
//  HiveFlow
//
//  Created by Kevin Buchholz on 2/19/23.
//

import SwiftUI

struct YourActionsView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .background(
                Image("TileBackgroundYellow"))
        }
    }
}
struct YourActionsView_Previews: PreviewProvider {
    static var previews: some View {
        YourActionsView()
    }
}

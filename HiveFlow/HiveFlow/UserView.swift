//
//  UserView.swift
//  HiveFlow
//
//  Created by Kevin Buchholz on 2/19/23.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        NavigationStack{
            VStack{
                VStack{
                    Text("PlaceHolder")
                    .padding()
                    
                    Text("Placeholder")
                    .padding()
                }
            }
            .background(
                Image("TileBackgroundYellow"))
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}

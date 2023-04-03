//
//  Hex-Grid.swift
//  HiveFlow
//
//  Created by Jordan Barconey on 2/10/23.
//

import SwiftUI

struct HiveView: View {
    var body: some View {
            NavigationStack{
                VStack {
                    NavigationLink(destination: AboutView()){
                        HexagonTextView(hexText:" about: ", hexColor: .hiveYellow)
                    }.offset(x: -80, y: 200)
                    
                    NavigationLink(destination: ContentView()){
                        HexagonDarkView(hexText: "hive:", hexColor: .hiveYellowDark )
                    }.offset(x: -80, y: 175)
                    
                    NavigationLink(destination: UserView()){
                        HexagonTextView(hexText:"user: ", hexColor: .hiveYellow)
                    }.offset(x: 80, y: -125)
                    
                    NavigationLink(destination: SettingsView()){
                        HexagonTextView(hexText:" settings: ", hexColor: .hiveYellow)
                    }.offset(x: 80, y: -150)
                    
                    NavigationLink(destination: YourActionsView()){
                        HexagonTextView(hexText:  "   your \n actions:: ", hexColor: .hiveYellow)
                    }.offset(x: -80, y: -265)
                }
            }
        }
    }
    




    
    struct HiveView_Previews: PreviewProvider {
    static var previews: some View {
        HiveView()
    }
}

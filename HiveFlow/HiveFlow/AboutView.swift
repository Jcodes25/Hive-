//
//  AboutView.swift
//  HiveFlow
//
//  Created by Kevin Buchholz on 2/19/23.
//

import SwiftUI

struct AboutView: View {
    var body: some View{
        NavigationStack{
            VStack{
                Text("      Hive is an application that enables users to     connect an perform community building actions with their neighbors.")
                    .padding()
                NavigationLink(destination: PrivacyPolicyView() ){
                    Text("Privacy Policy")
                }
                    .padding()
                
            }
            .background(
                Image("TileBackgroundYellow"))
            //.navigationTitle("about")
        
        }
    }
}
struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}

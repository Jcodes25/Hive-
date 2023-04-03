//
//  ContentView.swift
//  HiveFlow
//
//  Created by Jordan Barconey on 2/3/23.
//

import SwiftUI

func simpleSuccess() {
    let generator = UINotificationFeedbackGenerator()
    generator.notificationOccurred(.success)
}

struct ContentView: View {
   init() { UINavigationBar.setAnimationsEnabled(false)}
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink(destination: JoinView()){
                    HexagonView(hexText: "join", hexColor: .hiveLime)
                }.onTapGesture(perform: simpleSuccess)
                .offset(x: 80, y:100)
                
                NavigationLink(destination: HostView()){
                    HexagonView(hexText: "host", hexColor: .hiveLavender)
                } .offset(x: 80, y:75)
                
                NavigationLink(destination: HiveView()){
                    HexagonView(hexText: "hive", hexColor: .hiveYellow)
                } .offset(x: -80, y:-225)
                  .navigationBarBackButtonHidden(true)
            }
            //.navigationTitle("hive")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

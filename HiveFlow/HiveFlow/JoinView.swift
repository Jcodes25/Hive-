//
//  JoinView.swift
//  HiveFlow
//
//  Created by Jordan Barconey on 2/16/23.
//

import SwiftUI

struct JoinView: View {
    var body: some View {
        NavigationStack{
            VStack {
                HexagonTextView(hexText:"    area \n clean up: ", hexColor: .hiveLime)
                    .offset(x: -80, y: 200)
                NavigationLink(destination: ContentView()){
                    HexagonDarkView(hexText: "join:", hexColor: .hiveLimeDark )
                } .offset(x: -80, y: 175)
                
                HexagonTextView(hexText:"community \n  meeting: ", hexColor: .hiveLime)
                    .offset(x: 80, y: -125)
                
                HexagonTextView(hexText:"  meets \n 'n eats: ", hexColor: .hiveLime)
                    .offset(x: 80, y: -150)
                
                HexagonTextView(hexText:  "  more \n actions: ", hexColor: .hiveLime)
                    .offset(x: -80, y: -265)
                }
            }
        }
    }
            



struct JoinView_Previews: PreviewProvider {
    static var previews: some View {
        JoinView()
    }
}

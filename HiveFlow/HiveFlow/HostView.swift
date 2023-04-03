//
//  HostView.swift
//  HiveFlow
//
//  Created by Jordan Barconey on 2/16/23.
//

import SwiftUI
//FIGURE OUT MAP IMAGE SYMBOL!!!!!!
struct HostView: View {
    var body: some View {
        NavigationStack{
            VStack {
                HexagonTextView(hexText:" create \n action: ", hexColor: .hiveLavender)
                    .offset(x: -80, y: 200)
                
                NavigationLink(destination: ContentView()){
                    HexagonDarkView(hexText: "host:", hexColor: .hiveLavenderDark )
                }.offset(x: -80, y: 175)
                    
                NavigationLink(destination: SuggestedActionsView(viewModel: ActionViewModel())){
                    HexagonTextView(hexText:"suggested \n   actions: ", hexColor: .hiveLavender)
                }.offset(x: 80, y: -125)
                
                NavigationLink(destination: IssuesView()){
                    HexagonTextView(hexText:" issues: ", hexColor: .hiveLavender)
                }.offset(x: 80, y: -150)
                
                HexagonTextView(hexText:  " existing \n actions: ", hexColor: .hiveLavender)
                    .offset(x: -80, y: -265)
                }
            }
                .tint(.hiveLavenderDark)
        }
    }

struct HostView_Previews: PreviewProvider {
    static var previews: some View {
        HostView()
    }
}

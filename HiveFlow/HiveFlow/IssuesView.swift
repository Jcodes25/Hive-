//
//  IssuesView.swift
//  HiveFlow
//
//  Created by Kevin Buchholz on 2/19/23.
//

import SwiftUI

struct IssuesView: View {
    var body: some View {
        VStack {
            HexagonTextView(hexText:" homelessness: ", hexColor: .hiveLavender)
                .offset(x: -80, y: 200)
            
            NavigationLink(destination: ContentView()){
                HexagonDarkView(hexText: "host:", hexColor: .hiveLavenderDark )
            }.offset(x: -80, y: 175)
                
            NavigationLink(destination: SuggestedActionsView(viewModel: ActionViewModel())){
                HexagonTextView(hexText:"blight: ", hexColor: .hiveLavender)
            }.offset(x: 80, y: -125)
            
            HexagonTextView(hexText:"   community \n engagement: ", hexColor: .hiveLavender)
                .offset(x: 80, y: -150)
            
            HexagonTextView(hexText:  "  more \n actions: ", hexColor: .hiveLavender)
                .offset(x: -80, y: -265)
            }
    }
}

struct IssuesView_Previews: PreviewProvider {
    static var previews: some View {
        IssuesView()
    }
}

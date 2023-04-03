//
//  SuggestedActionsView.swift
//  HiveFlow
//
//  Created by Kevin Buchholz on 2/19/23.
//

import SwiftUI

struct SuggestedActionsView: View {
    var viewModel: ActionViewModel
    var body: some View {
        VStack {
            NavigationStack{
                NavigationLink(destination: ParkCleanUpView(viewModel: viewModel)){
                    HexagonTextView(hexText:" park \n clean up: ", hexColor: .hiveLavender)
                }.offset(x: -80, y: 200)
                
                NavigationLink(destination: ContentView()){
                    HexagonDarkView(hexText: "host:", hexColor: .hiveLavenderDark )
                }.offset(x: -80, y: 175)
                
                HexagonTextView(hexText:"community \n  meeting: ", hexColor: .hiveLavender)
                    .offset(x: 80, y: -125)
                
                HexagonTextView(hexText:" meets n' \n    eats: ", hexColor: .hiveLavender)
                    .offset(x: 80, y: -150)
                
                HexagonTextView(hexText:  "      more \n suggestions: ", hexColor: .hiveLavender)
                    .offset(x: -80, y: -265)
                }
            }
        }
    }


struct SuggestedActionsView_Previews: PreviewProvider {
    static var previews: some View {
        var actionViewModel = ActionViewModel()
        SuggestedActionsView(viewModel: ActionViewModel())
    }
}

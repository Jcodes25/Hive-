//
//  PrivacyPolicyView.swift
//  HiveFlow
//
//  Created by Jordan Barconey on 3/2/23.
//

import SwiftUI

struct PrivacyPolicyView: View {
    @State private var PrivacyAgreement = false
    var body: some View {
        NavigationStack{
            Form {
                VStack{
                    Text("Private Private Private")
                    Text("Private Private Private")
                    Text("Private Private Private")
                    Text("Private Privacy Private")
                    Text("Private Stay Private  Private")
                    Text("Private Stay Away Private")
                    Text("Private Really Really  Private")
                    Text("Private Not Private,  Private")

                    Toggle("        Do You Agree With These  \n        Privacies Private",  isOn: $PrivacyAgreement)
                        .toggleStyle(SwitchToggleStyle(tint: .hiveYellow))
                }
            }.navigationTitle("Privacy")
        }
    }
}

struct PrivacyPolicyView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacyPolicyView()
    }
}

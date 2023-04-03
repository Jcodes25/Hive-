//
//  SettingsView.swift
//  HiveFlow
//
//  Created by Kevin Buchholz on 2/19/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var ThisisCrazy = String()
    @State private var birthdate = Date()
    @State private var shouldVibrate = false
    var body: some View {
        NavigationStack {
            Form{
                Section(header: Text("WOwzza")) {
                    TextField("This is crazy", text: $ThisisCrazy)
                    Text("WooHoo")
                    DatePicker("Birthdate", selection: $birthdate, displayedComponents: .date)
                }
                NavigationLink(destination: HelpView()) {
                    Text("Help")
                }
                Toggle("Vibration", isOn: $shouldVibrate)
                    .toggleStyle(SwitchToggleStyle(tint: .hiveYellow))
            }
            .accentColor(.hiveYellow)
            .navigationTitle("Settings")
        } .ignoresSafeArea()
//        .background(
//            Image("TileBackgroundYellow"))
        }
    }


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

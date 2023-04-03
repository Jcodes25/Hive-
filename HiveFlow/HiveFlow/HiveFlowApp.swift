//
//  HiveFlowApp.swift
//  HiveFlow
//
//  Created by Jordan Barconey on 2/3/23.
//

import SwiftUI

@main
struct HiveFlowApp: App {
    @StateObject var actionViewModel = ActionViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

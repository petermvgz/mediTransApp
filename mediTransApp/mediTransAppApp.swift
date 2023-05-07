//
//  mediTransAppApp.swift
//  mediTransApp
//
//  Created by Peter Deyi on 5/7/23.
//

import SwiftUI

@main
struct mediTransAppApp: App {
    //create state object to initiate app data
    //making the cookie
    @StateObject private var appData = ApplicationData()
    // @StateObject will help change multiple screens automatically
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(appData)
        }
    }
}

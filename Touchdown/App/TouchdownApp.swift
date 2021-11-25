//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Igor Efimov on 14.11.2021.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}

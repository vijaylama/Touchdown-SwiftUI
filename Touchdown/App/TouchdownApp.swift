//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Vijay Lama on 4/7/21.
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

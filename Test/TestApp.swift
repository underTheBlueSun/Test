
//
//  ANPApp.swift
//  ANP
//
//  Created by underTheBlueSun on 2021/04/24.
//
import SwiftUI

@main
struct TestApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(KoreanViewModel())
//            ContentView()
        }
    }
}

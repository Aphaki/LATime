//
//  LATimeApp.swift
//  LATime
//
//  Created by Sy Lee on 2022/04/21.
//

import SwiftUI

@main
struct LATimeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ViewModel())
        }
    }
}

//
//  SharingDataTryApp.swift
//  SharingDataTry
//
//  Created by admin on 26/4/21.
//

import SwiftUI

@main
struct SharingDataTryApp: App {
  
  @StateObject var appInfo = AppInformation()
  
    var body: some Scene {
        WindowGroup {
          ContentView()
            .environmentObject(appInfo)
        }
    }
}

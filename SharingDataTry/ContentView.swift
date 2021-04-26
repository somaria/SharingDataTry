//
//  ContentView.swift
//  SharingDataTry
//
//  Created by admin on 26/4/21.
//

import SwiftUI

struct ContentView: View {
  @EnvironmentObject var appInfo: AppInformation
    var body: some View {
      
      if appInfo.appPage == 0 {
        ZStack {
          Color.green.edgesIgnoringSafeArea(.all).opacity(0.2)
          VStack {
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $appInfo.textShared)
            Button(action: {appInfo.appPage = 1}) {
              Text("To Next View")
            }
          }
          .padding()
          .font(.largeTitle)
        }
      } else {
        SecondView()
      }
    }
}

struct ContentView_Previews: PreviewProvider {
  @EnvironmentObject var appInfo: AppInformation
    static var previews: some View {
        ContentView().environmentObject(AppInformation())
    }
}

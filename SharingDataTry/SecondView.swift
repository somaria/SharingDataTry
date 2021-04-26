//
//  SecondView.swift
//  SharingDataTry
//
//  Created by admin on 26/4/21.
//

import SwiftUI

struct SecondView: View {
  @EnvironmentObject var appInfo: AppInformation
    var body: some View {
      ZStack {
        Color.orange.edgesIgnoringSafeArea(.all).opacity(0.2)
        VStack {
          TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $appInfo.textShared)
          Button(action: { appInfo.appPage = 0}) {
            Text("To First View")
          }
        }
        .padding()
        .font(.largeTitle)
      }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

class AppInformation: ObservableObject {
  @Published var appPage = 0
  @Published var textShared = "Type something..."
}

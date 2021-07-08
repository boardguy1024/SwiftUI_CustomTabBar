//
//  ContentView.swift
//  SwiftUI_CustomTabBar
//
//  Created by park kyung seok on 2021/07/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      TabBar()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

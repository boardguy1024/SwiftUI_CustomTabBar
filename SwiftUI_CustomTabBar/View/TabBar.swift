//
//  TabBar.swift
//  SwiftUI_CustomTabBar
//
//  Created by park kyung seok on 2021/07/07.
//

import SwiftUI

struct TabBar: View {
    
    @State var currentTab = "house"
    @Namespace var animation
    @State var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    init() {
        
        // hiding default tab bar
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            TabView(selection: $currentTab) {
                
                Home(animation: animation)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[0])
                    .background(Color("bg").ignoresSafeArea())
                
                Text("Booking")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[1])
                    .background(Color("bg").ignoresSafeArea())
                
                Text("Favourites")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[2])
                    .background(Color("bg").ignoresSafeArea())
                
                Text("Settings")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[3])
                    .background(Color("bg").ignoresSafeArea())
            }
            
            // Custom Tab Bar
            HStack(spacing: 35) {
                ForEach(tabs, id: \.self) { image in
                    
                    TabButton(imageStr: image, selected: $currentTab, animation: animation)
                }
            }
            .padding(.horizontal, 35)
            .padding(.top)
            .padding(.bottom, safeArea?.bottom != 0 ? safeArea?.bottom : 15)
            .background(
                LinearGradient(gradient: .init(colors: [Color("g1"), Color("g2")]), startPoint: .top, endPoint: .bottom)
            )
            .clipShape(CustomCorner(corners: [.topLeft, .topRight]))
        }
        .ignoresSafeArea(.all, edges: .bottom)
        
     
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

var tabs = ["house", "book", "suit.heart", "person"]

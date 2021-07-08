//
//  TabButton.swift
//  SwiftUI_CustomTabBar
//
//  Created by park kyung seok on 2021/07/07.
//

import SwiftUI

struct TabButton: View {
    var imageStr: String
    @Binding var selected: String
    var animation: Namespace.ID
    
    var body: some View {
        
        Button(action: {
            withAnimation(.spring()) {
                selected = imageStr
            }
        }) {
         
            VStack(spacing: 12) {
                Image(systemName: imageStr)
                    .font(.system(size: 25))
                    .foregroundColor(selected == imageStr ? .white : .gray)
                
                ZStack {
                    // これがないとアニメーション時に下のカレントCircleによりイメージとの上下位置がややズレるので透明で表示
                    Circle()
                        .fill(Color.clear)
                        .frame(width: 8, height: 8)
                    
                    if selected == imageStr {
                        Circle()
                            .fill(Color.white)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                            .frame(width: 8, height: 8)
                    }
                }
            }
            
           
        }
    }
}

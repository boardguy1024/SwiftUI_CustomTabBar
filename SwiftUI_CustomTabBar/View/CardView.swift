//
//  CardView.swift
//  SwiftUI_CustomTabBar
//
//  Created by park kyung seok on 2021/07/08.
//

import SwiftUI

struct CardView: View {
    
    var item: Item
    var whiteWithOpacity = Color.white.opacity(0.85)

    var body: some View {
        
        VStack(spacing: 35) {
            
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
            
            
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    
                    Text(item.name)
                        .foregroundColor(whiteWithOpacity)
                    
                    Text(item.price)
                        .foregroundColor(.white)
                }
                
                Spacer(minLength: 0)
                
                Button(action: { }) {
                    Image(systemName: "plus")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                }
            }
            .padding()
        }
        .background(
            LinearGradient(gradient: .init(colors: [Color.white.opacity(0.1), Color.black.opacity(0.35)]), startPoint: .top, endPoint: .bottom)
                .cornerRadius(25)
                .padding(.top, 60)

        )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(item: .init(id: "", name: "", price: "", image: ""))
    }
}

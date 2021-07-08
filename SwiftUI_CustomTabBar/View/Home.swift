//
//  Home.swift
//  SwiftUI_CustomTabBar
//
//  Created by park kyung seok on 2021/07/08.
//

import SwiftUI

struct Home: View {
    
    var animation: Namespace.ID
    var whiteWithOpacity = Color.white.opacity(0.85)
    
    func Header(title: String) -> HStack<TupleView<(Text, Spacer)>> {
        return
            // Herader Title
            HStack {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(whiteWithOpacity)
                
                Spacer()
            }
        
    }
    
    var body: some View {
        
        VStack {
            
            //Top navibar
            ZStack {
                
                //top 左右アイコン
                HStack {
                    
                    Button(action: { }) {
                        Image(systemName: "rectangle.grid.2x2")
                            .font(.title2)
                            .foregroundColor(whiteWithOpacity)
                    }
                    
                    Spacer()
                    
                    Button(action: { }) {
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                            .foregroundColor(whiteWithOpacity)
                    }
                    
                }
                .padding([.horizontal, .bottom])
                .padding(.top, 10)
                
                //中央タイトル
                Text("Salads")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            
            // ScrollArea of contents
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack {
                    
                    // Herader Title
                    Header(title: "Special Offers")
                    .padding()
                    
                    
                    HStack {
                        
                        //左のテキスト
                        VStack(alignment: .leading, spacing: 6, content: {
                            
                            Text("Greek Salad")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            HStack {
                                Text("Only Today")
                                    .foregroundColor(whiteWithOpacity)
                                
                                Text("10%")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                                Text("off")
                                    .foregroundColor(whiteWithOpacity)
                            }
                            
                            Text("$3.52")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                        })
                        
                        Spacer(minLength: 6)
                        
                        Image("p2")
                            .padding(.horizontal, 3)
                    }
                    .padding([.vertical, .leading])
                    .background(
                        LinearGradient(gradient: .init(colors: [Color("g1"), Color("g2")]), startPoint: .top, endPoint: .bottom)
                            .cornerRadius(25)
                            .padding(.vertical, 25)
                            .padding(.trailing, 30)
                    )
                    .padding(.horizontal)
                    
                    
                    
                    
                    // Herader Title
                    Header(title: "Seasonal Salads")
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 25) {
                            
                            ForEach(items) { item in
                                
                                // Horizontal Scrollable Card View
                                CardView(item: item)
                            }
                        }
                        .padding()
                        
                    }
                    .padding(.bottom, 100)
                }
            }
        }
    }
}


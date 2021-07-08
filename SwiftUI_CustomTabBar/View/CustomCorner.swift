//
//  CustomCorner.swift
//  SwiftUI_CustomTabBar
//
//  Created by park kyung seok on 2021/07/08.
//

import SwiftUI

struct CustomCorner: Shape {
    
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: .init(width: 35, height: 35))
        return Path(path.cgPath)
    }
}

//
//  CircleColorView.swift
//  ColorizedSwiftUI
//
//  Created by Олег Тарасенко on 10/21/20.
//

import SwiftUI

struct CircleColorView: View {
    
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    
    var body: some View {
        Circle()
            
            .frame(width: 220, height: 220)
            .foregroundColor(Color(red: red/255, green: green/255, blue: blue/255))
            .overlay(Circle().stroke(Color.white, lineWidth: 7))
            .shadow(radius: 10)
        
    }
}
//
//struct CircleColorView_Previews: PreviewProvider {
//    static var previews: some View {
//        CircleColorView(red: 0.0, green: 0.0, blue: 0.0)
//    }
//}

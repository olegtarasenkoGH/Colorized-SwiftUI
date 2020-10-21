//
//  ContentView.swift
//  ColorizedSwiftUI
//
//  Created by Олег Тарасенко on 10/21/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var colorValueRed = 0.0
    @State private var colorValueGreen = 0.0
    @State private var colorValueBlue = 0.0
    
    @State private var numberValueR = ""
    @State private var numberValueG = ""
    @State private var numberValueB = ""
    
    var body: some View {
        
        
        VStack {
            
            CircleColorView(red: $colorValueRed, green: $colorValueGreen, blue: $colorValueBlue)
                .padding(50)
            
            VStack(alignment: .center, spacing: 25, content: {
                
                ColorSliderView(value: $colorValueRed, numberValue: $numberValueR, textColor: .red)
                ColorSliderView(value: $colorValueGreen, numberValue: $numberValueG, textColor: .green)
                ColorSliderView(value: $colorValueBlue, numberValue: $numberValueB, textColor: .blue)
                
            })
            Spacer()
        }
        .padding()
        .background(Color.radial).edgesIgnoringSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

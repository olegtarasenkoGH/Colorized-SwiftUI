//
//  ColorSliderView.swift
//  ColorizedSwiftUI
//
//  Created by Олег Тарасенко on 10/21/20.
//

import SwiftUI

extension ColorSliderView {
    
    func checkColor() {
        
        guard  let colorString = Double(numberValue) else { return }
        
        switch colorString {
        
        case 0 ... 255:
            value = colorString
            numberValue = ""
            
        default:
            numberValue = ""
            showAlert = true
            
        }
        
    }
}
    

struct ColorSliderView: View {
    
    @Binding  var value: Double
    @Binding  var numberValue: String
    @State  var showAlert = false
    var textColor: Color
    
    var body: some View {
        
        
        HStack {
            
            Text("0").foregroundColor(textColor).bold()
            Slider(value: $value, in: 0 ... 255, step: 1.00).accentColor(textColor)
            
            Button(action: { checkColor()},
                   label: {TextField("\(lround(value))", text: $numberValue)
                    
                    .frame(width: 31, height: 25, alignment: .center)
                    .foregroundColor(textColor)
                   } )
                
                .alert(isPresented: $showAlert , content: {
                    Alert(title: Text("Wrong Format!"), message: Text("Enter from 0 to 255"))
                })
            
    }
 
    }

}


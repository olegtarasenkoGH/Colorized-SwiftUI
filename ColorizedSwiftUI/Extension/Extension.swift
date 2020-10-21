//
//  Extension.swift
//  ColorizedSwiftUI
//
//  Created by Олег Тарасенко on 10/21/20.
//

import SwiftUI

extension Color {
   
    static let radial = RadialGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))]),
                                       center: .center, startRadius: 2, endRadius: 650)

}

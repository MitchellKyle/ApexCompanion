//
//  WDClipsView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/27/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct WDClipsView: View {
    
    var clipText: String
    
    var clipIcon: String
    
    var red: Double
    
    var green: Double
    
    var blue: Double
    
    var clipSize: String
    
    var body: some View {
        VStack {
            
            if clipIcon != "" {
                Spacer()
            }
            
            Text(clipText)
                .font(.custom("Teko-Light", size: 23))
                .padding(.horizontal)
                .foregroundColor(.white)
                .background(Color.black)
                .cornerRadius(8)
            
            if clipIcon != "" {
                Image(clipIcon)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .padding(.all, 5)
                .background(Color.init(red: red, green: green, blue: blue, opacity: 1))
            }
            
            Text(clipSize)
                .font(.custom("Teko-Light", size: 25))
        }
        .frame(width: 110, height: 150, alignment: .center)
        .padding(.all)
        .background(Color.white.opacity(0.9))
        .cornerRadius(20)
    }
}

struct WDClipsView_Previews: PreviewProvider {
    static var previews: some View {
        WDClipsView(clipText: "Standard", clipIcon: weaponData[4].clipIcon, red: 0/255, green: 75/255, blue: 137/255, clipSize: weaponData[0].clipSize.standard)
    }
}

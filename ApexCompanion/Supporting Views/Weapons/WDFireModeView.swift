//
//  WDFireModeView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/27/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct WDFireModeView: View {
    
    var modeOne: String
    var modeTwo: String?
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Fire Modes")
                .font(.custom("Teko-Light", size: 25))
                .padding(.horizontal)
                .foregroundColor(.white)
                .background(Color.black)
                .cornerRadius(10)
            
            Spacer()
            
            Text(modeOne)
                .font(.custom("Teko-Light", size: 25))
            
            Spacer()
            
            if modeTwo != nil {
                Text(modeTwo!)
                .font(.custom("Teko-Light", size: 25))
            }
            
            
            
            Spacer()
        }
        .frame(width: 130, height: 110, alignment: .center)
        .padding()
        .background(Color.white.opacity(0.75))
        .cornerRadius(20)
    }
}

struct WDFireModeView_Previews: PreviewProvider {
    static var previews: some View {
        WDFireModeView(modeOne: weaponData[0].fireMode.modeOne, modeTwo: weaponData[0].fireMode.modeTwo)
    }
}

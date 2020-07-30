//
//  WDDamageView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/27/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct WDDamageView: View {
    
    var location: String
    
    var damage: String
    
    var body: some View {
        VStack {
            Spacer()
            Text(location)
                .font(.custom("Teko-Light", size: 23))
                .padding(.horizontal)
                .foregroundColor(.white)
                .background(Color.black)
                .cornerRadius(8)
            Text(damage)
                .font(.custom("Teko-Light", size: 25))
        }
        .frame(width: 70, height: 60, alignment: .center)
        .padding(.all, 12)
        .background(Color.white.opacity(0.9))
        .cornerRadius(20)
    }
}

struct WDDamageView_Previews: PreviewProvider {
    static var previews: some View {
        WDDamageView(location: "Head", damage: weaponData[0].damage.head)
    }
}

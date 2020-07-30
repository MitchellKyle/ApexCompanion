//
//  WDTypesView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/26/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct WDTypesView: View {
    
    var typeIcon: String
    
    var type: String
    
    var typeTitle: String
    
    var iconWidth: CGFloat
    
    var body: some View {
        VStack {
            Spacer()
            Text(typeTitle)
                .font(.custom("Teko-Light", size: 25))
                .padding(.horizontal)
                .foregroundColor(.white)
                .background(Color.black
                    .cornerRadius(10))
            Spacer()
            Image(typeIcon)
                .resizable()
                .frame(width: iconWidth, height: 50, alignment: .center)
            Spacer()
            Text(type)
            .font(.custom("Teko-Light", size: 25))
            Spacer()
        }
        .frame(width: 130, height: 130, alignment: .center)
        .padding()
        .background(Color.white.opacity(0.75))
        .cornerRadius(20)
    }
}

struct WDTypesView_Previews: PreviewProvider {
    static var previews: some View {
        WDTypesView(typeIcon: weaponData[0].type, type: weaponData[0].weaponTypeIcon, typeTitle: "Weapon Type", iconWidth: 100)
    }
}

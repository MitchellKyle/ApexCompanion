//
//  WeaponItem.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/29/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct WeaponItem: View {
    
    var weapon: Weapon
    
    var body: some View {
        VStack {
            ZStack {
                Image(weapon.imageIcon)
                    .resizable()
                    .renderingMode(.original)
                    .offset(y: -10)
                    .padding(.all, 10)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 320, height: 170)
                
                Text(weapon.name)
                    .offset(x: -90, y: 80)
                    .font(.custom("Teko-SemiBold", size: 30))
                    .padding(.leading)
                    .foregroundColor(.black)
            }
        }.frame(width: 350, height: 250)
        .background(Color.init(red: 247/255, green: 212/255, blue: 128/255))
        .cornerRadius(20)
    }
}

struct WeaponItem_Previews: PreviewProvider {
    static var previews: some View {
        WeaponItem(weapon: weaponData[0])
    }
}

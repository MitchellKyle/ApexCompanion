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
            
            Image(weapon.imageIcon)
                .resizable()
                .renderingMode(.original)
                .padding(.all, 10)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 170)
                .background(Color.init(red: 247/255, green: 212/255, blue: 128/255))
                .cornerRadius(20)
                .shadow(radius: 5)
            
            HStack {
                Text(weapon.name)
                    .font(.custom("Teko-SemiBold", size: 30))
                    .foregroundColor(.black)
                    .padding(.leading)
                Spacer()
            }
        }.padding()
    }
}

struct WeaponItem_Previews: PreviewProvider {
    static var previews: some View {
        WeaponItem(weapon: weaponData[0])
    }
}

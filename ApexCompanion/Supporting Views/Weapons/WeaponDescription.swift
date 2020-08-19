//
//  WeaponDescription.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/6/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct WeaponDescription: View {
    
    var weapon: Weapon
    
    var body: some View {
        VStack {
            HStack {
                
                Spacer()
                
                // Weapon Type
                VStack {
                    Text("Weapon Type")
                        .font(.custom("Teko-SemiBold", size: 25))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(height: 75)
                    Image(weapon.weaponTypeIcon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 50)
                    Text(weapon.type)
                        .font(.custom("Teko-SemiBold", size: 20))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(height: 60)
                }.frame(width: 95)
                
                Spacer()
                
                // Ammo Type
                VStack {
                    Text("Ammo Type")
                        .font(.custom("Teko-SemiBold", size: 25))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(height: 75)
                    Image(weapon.ammoTypeIcon)
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text(weapon.ammoType)
                        .font(.custom("Teko-SemiBold", size: 20))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(height: 60)
                }.frame(width: 95)
                
                Spacer()
                
                // Magazine Size
                VStack {
                    Text("Magazine Size")
                        .font(.custom("Teko-SemiBold", size: 25))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(height: 75)
                    Image(weapon.clipIcon)
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text(weapon.standardClipSize)
                        .font(.custom("Teko-SemiBold", size: 20))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(height: 60)
                }.frame(width: 95)
                Spacer()
            }
            Text(weapon.description)
                .font(.custom("Teko-SemiBold", size: 20))
                .foregroundColor(.black)
                .padding(.top, 20)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal)
        }.padding(.vertical)
        .background(Color.white.opacity(0.9))
        .cornerRadius(20)
    }
}

struct WeaponDescription_Previews: PreviewProvider {
    static var previews: some View {
        WeaponDescription(weapon: weaponData[5])
    }
}

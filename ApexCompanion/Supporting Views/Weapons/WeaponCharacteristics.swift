//
//  WeaponCharacteristics.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/26/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct WeaponCharacteristics: View {
    var body: some View {
        VStack {
            HStack {
                
                Spacer()
                
                // Weapon Type
                VStack {
                    Spacer()
                    Text("Weapon Type")
                        .font(.custom("Teko-Light", size: 25))
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .background(Color.black
                            .cornerRadius(10))
                    Spacer()
                    Image("assault_rifle_icon")
                        .resizable()
                        .frame(width: 100, height: 50, alignment: .center)
                    Spacer()
                    Text("Assault Rifle")
                    .font(.custom("Teko-Light", size: 25))
                    Spacer()
                }
                .frame(width: 130, height: 130, alignment: .center)
                .padding()
                .background(Color.white.opacity(0.75))
                .cornerRadius(20)
                
                    
                
                Spacer()
                
                // Ammo Type
                VStack {
                    Spacer()
                    Text("Ammo Type")
                        .font(.custom("Teko-Light", size: 25))
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(10)
                    Spacer()
                    Image("heavy_ammo")
                        .resizable().frame(width: 50, height: 50, alignment: .center)
                    Spacer()
                    Text("Heavy")
                        .font(.custom("Teko-Light", size: 25))
                    Spacer()
                }
                .frame(width: 130, height: 130, alignment: .center)
                .padding()
                .background(Color.white.opacity(0.75))
                .cornerRadius(20)
                
                Spacer()
                
            }
        }
    }
    
    struct WeaponCharacteristics_Previews: PreviewProvider {
        static var previews: some View {
            WeaponCharacteristics()
        }
}

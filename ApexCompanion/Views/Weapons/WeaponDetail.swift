//
//  WeaponDetail.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/25/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct WeaponDetail: View {

    var weapon: Weapon

    var body: some View {

        ZStack {

            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)

            ScrollView {
                
                VStack(spacing: 0) {
                    // Character Name
                    HStack {
                        Text(weapon.name)
                        .font(.custom("Teko-Bold", size: 45))
                            .foregroundColor(.black)
                        Spacer()
                    }.frame(height: 40)
                        .padding(.all)
                    HStack {
                        Spacer()
                        // Weapon Image
                        Image(weapon.image)
                            .resizable()
                            .frame(width: 300, height: 150)
                            .cornerRadius(20)
                            .padding()
                        Spacer()
                    }.background(Color.init(red: 228/255, green: 225/255, blue: 216/255))
                        .cornerRadius(20)
                }
                
                VStack {
                    WeaponDescription(weapon: weapon)
                    DamageView(weapon: weapon)
                    AttachmentsView(weapon: weapon)
                    FireModeView(weapon: weapon)
                }
            }.padding(.top, 1)
                .padding(.bottom, 5)
        }
    }
}



struct WeaponDetail_Previews: PreviewProvider {
    static var previews: some View {
        WeaponDetail(weapon: weaponData[0])
    }
}

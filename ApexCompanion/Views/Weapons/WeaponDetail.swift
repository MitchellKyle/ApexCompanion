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

            Image("season_6_bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)

            ScrollView {
                
                VStack(spacing: 0) {
                    // Weapon Name
                    HStack {
                        Text(weapon.name)
                        .font(.custom("Teko-Bold", size: 45))
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .frame(height: 40)
                    .padding(.all)
                    
                    HStack {
                        Spacer()
                        // Weapon Image
                        Image(weapon.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 150)
                            .cornerRadius(20)
                            .padding()
                            
                        Spacer()
                    }
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(20)
                }
                
                VStack {
                    WeaponDescription(weapon: weapon)
                    DamageView(weapon: weapon)
                    if weapon.attachments != nil {
                        AttachmentsView(weapon: weapon)
                    }
                    FireModeView(weapon: weapon)
                }
            }.padding(.top, 1)
                .padding(.bottom, 5)
        }
    }
}



struct WeaponDetail_Previews: PreviewProvider {
    static var previews: some View {
        WeaponDetail(weapon: weaponData[6])
    }
}

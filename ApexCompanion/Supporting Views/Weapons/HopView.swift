//
//  HopView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/8/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct HopView: View {
    
    var weapon: Weapon
    
    var body: some View {
        VStack {
            HStack {
                Image(weapon.attachments!.hop!.icon)
                    .resizable()
                    .frame(width: 50, height: 50)
                Text(weapon.attachments!.hop!.name)
                    .font(.custom("Teko-SemiBold", size: 25))
                    .foregroundColor(.black)
            }
            .padding(.vertical)
            Text(weapon.attachments!.hop!.description)
                .font(.custom("Teko-SemiBold", size: 20))
                .foregroundColor(.black)
        }
    }
}

struct HopView_Previews: PreviewProvider {
    static var previews: some View {
        HopView(weapon: weaponData[1])
    }
}

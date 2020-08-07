//
//  ClipsView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/4/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct ClipsView: View {
    
    var weapon: Weapon
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text(weapon.attachments!.clips!.description)
                        .font(.custom("Teko-SemiBold", size: 20))
                        .foregroundColor(.black)
                }
                HStack {
                    // Level One
                    SingleClipView(weapon: weapon, name: "Level One", clipSize: weapon.attachments!.clips!.levelOne, color: Constants.Colors.levelOne)
                    
                    // Level Two
                    SingleClipView(weapon: weapon, name: "Level Two", clipSize: weapon.attachments!.clips!.levelTwo, color: Constants.Colors.levelTwo)
                    
                    // Level Three
                    SingleClipView(weapon: weapon, name: "Level Three", clipSize: weapon.attachments!.clips!.levelThree, color: Constants.Colors.levelThree)
                }
            }
        }.frame(height: 400)
            .padding(.horizontal, 8)
    }
}

struct ClipsView_Previews: PreviewProvider {
    static var previews: some View {
        ClipsView(weapon: weaponData[0])
    }
}

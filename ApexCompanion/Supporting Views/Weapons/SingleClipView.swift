//
//  SingleClipView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/7/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct SingleClipView: View {
    
    var weapon: Weapon
    var name: String
    var clipSize: String
    var color: UIColor
    
    var body: some View {
        VStack {
            Image(weapon.attachments!.clips!.clipIconWhite)
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.all, 5)
                .background(Color(color))
                .cornerRadius(10)
            Text(name)
                .font(.custom("Teko-SemiBold", size: 20))
                .foregroundColor(.black)
            Text(clipSize)
                .font(.custom("Teko-SemiBold", size: 25))
                .foregroundColor(.black)
        }.frame(width: 95)
    }
}

struct SingleClipView_Previews: PreviewProvider {
    static var previews: some View {
        SingleClipView(weapon: weaponData[0], name: "Level One", clipSize: weaponData[0].attachments!.clips!.levelOne, color: Constants.Colors.levelOne)
    }
}

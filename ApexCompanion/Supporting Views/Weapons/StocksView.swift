//
//  StocksView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/5/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct StocksView: View {
    
    var weapon: Weapon
    var isStabilizer: Bool
    
    var body: some View {
        ScrollView {
            VStack {
                Text(isStabilizer ? weapon.attachments!.stabilizer!.description : weapon.attachments!.stocks!.description)
                    .font(.custom("Teko-SemiBold", size: 20))
                    .foregroundColor(.black)
                // Common Stock/Stabilizer
                SingleStockView(
                    image: isStabilizer ? weapon.attachments!.stabilizer!.stabilizerIconWhite : weapon.attachments!.stocks!.stockIconWhite,
                    name: isStabilizer ? weapon.attachments!.stabilizer!.commonName : weapon.attachments!.stocks!.commonName,
                    description: isStabilizer ? weapon.attachments!.stabilizer!.commonDescription : weapon.attachments!.stocks!.commonDescription,
                    levelColor: Constants.Colors.levelOne)
                SingleStockView(
                    image: isStabilizer ? weapon.attachments!.stabilizer!.stabilizerIconWhite : weapon.attachments!.stocks!.stockIconWhite,
                    name: isStabilizer ? weapon.attachments!.stabilizer!.rareName : weapon.attachments!.stocks!.rareName,
                    description: isStabilizer ? weapon.attachments!.stabilizer!.rareDescription : weapon.attachments!.stocks!.rareDescription,
                levelColor: Constants.Colors.levelTwo)
                SingleStockView(
                    image: isStabilizer ? weapon.attachments!.stabilizer!.stabilizerIconWhite : weapon.attachments!.stocks!.stockIconWhite,
                    name: isStabilizer ? weapon.attachments!.stabilizer!.epicName : weapon.attachments!.stocks!.epicName,
                    description: isStabilizer ? weapon.attachments!.stabilizer!.epicDescription : weapon.attachments!.stocks!.epicDescription,
                levelColor: Constants.Colors.levelThree)
                if isStabilizer {
                    SingleStockView(
                        image: weapon.attachments!.stabilizer!.stabilizerIconWhite,
                        name: weapon.attachments!.stabilizer!.legendaryName,
                        description: weapon.attachments!.stabilizer!.legendaryDescription,
                    levelColor: Constants.Colors.levelFour)
                }
            }
        }.frame(height: 400)
    }
}

struct StocksView_Previews: PreviewProvider {
    static var previews: some View {
        StocksView(weapon: weaponData[1], isStabilizer: true)
    }
}

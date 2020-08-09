//
//  StockStabilizerBoltView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/5/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct StockStabilizerBoltView: View {
    
    var weapon: Weapon
    var isStock: Bool
    var isStabilizer: Bool
    var isBolt: Bool
    
    var body: some View {
        ScrollView {
            VStack {
                
                // Stock
                if isStock {
                    Text(weapon.attachments!.stocks!.description)
                        .font(.custom("Teko-SemiBold", size: 20))
                        .foregroundColor(.black)
                    
                    SingleStockView(image: weapon.attachments!.stocks!.stockIconWhite, name: weapon.attachments!.stocks!.commonName, description: weapon.attachments!.stocks!.commonDescription, levelColor: Constants.Colors.levelOne)
                    SingleStockView(image: weapon.attachments!.stocks!.stockIconWhite, name: weapon.attachments!.stocks!.rareName, description: weapon.attachments!.stocks!.rareDescription, levelColor: Constants.Colors.levelTwo)
                    SingleStockView(image: weapon.attachments!.stocks!.stockIconWhite, name: weapon.attachments!.stocks!.epicName, description: weapon.attachments!.stocks!.epicDescription, levelColor: Constants.Colors.levelThree)
                }
                
                // Stabilizer
                if isStabilizer {
                    Text(weapon.attachments!.stabilizer!.description)
                    .font(.custom("Teko-SemiBold", size: 20))
                    .foregroundColor(.black)
                    SingleStockView(image: weapon.attachments!.stabilizer!.stabilizerIconWhite, name: weapon.attachments!.stabilizer!.commonName, description: weapon.attachments!.stabilizer!.commonDescription, levelColor: Constants.Colors.levelOne)
                    SingleStockView(image: weapon.attachments!.stabilizer!.stabilizerIconWhite, name: weapon.attachments!.stabilizer!.rareName, description: weapon.attachments!.stabilizer!.rareDescription, levelColor: Constants.Colors.levelTwo)
                    SingleStockView(image: weapon.attachments!.stabilizer!.stabilizerIconWhite, name: weapon.attachments!.stabilizer!.epicName, description: weapon.attachments!.stabilizer!.epicDescription, levelColor: Constants.Colors.levelThree)
                    SingleStockView(image: weapon.attachments!.stabilizer!.stabilizerIconWhite, name: weapon.attachments!.stabilizer!.legendaryName, description: weapon.attachments!.stabilizer!.legendaryDescription, levelColor: Constants.Colors.levelFour)
                }
                
                // Bolt
                if isBolt {
                    Text(weapon.attachments!.bolt!.description)
                    .font(.custom("Teko-SemiBold", size: 20))
                    .foregroundColor(.black)
                    
                    SingleStockView(image: weapon.attachments!.bolt!.iconWhite, name: weapon.attachments!.bolt!.commonName, description: weapon.attachments!.bolt!.commonDescription, levelColor: Constants.Colors.levelOne)
                    SingleStockView(image: weapon.attachments!.bolt!.iconWhite, name: weapon.attachments!.bolt!.rareName, description: weapon.attachments!.bolt!.rareDescription, levelColor: Constants.Colors.levelTwo)
                    SingleStockView(image: weapon.attachments!.bolt!.iconWhite, name: weapon.attachments!.bolt!.epicName, description: weapon.attachments!.bolt!.epicDescription, levelColor: Constants.Colors.levelThree)
                }
            }
        }.frame(height: 400)
    }
}

struct StockStabilizerBoltView_Previews: PreviewProvider {
    static var previews: some View {
        StockStabilizerBoltView(weapon: weaponData[0], isStock: true, isStabilizer: false, isBolt: false)
    }
}

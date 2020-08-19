//
//  ItemItem.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/15/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct ItemItem: View {
    
    var gear: Gear?
    var regen: Regen?
    var grenade: Grenades?
    
    var body: some View {
        ZStack {
            VStack {
                Image("season_6_bg").renderingMode(.original)
            }
            .frame(width: 300, height: 180)
                .rotationEffect(.degrees(90))
            .cornerRadius(20)
            
            if gear != nil && regen == nil && grenade == nil {
                SingleItemView(itemImage: gear!.image, itemName: gear!.name, isRegen: false)
            }
            if regen != nil && gear == nil && grenade == nil {
                SingleItemView(itemImage: regen!.image, itemName: regen!.name, isRegen: true)
            }
            if grenade != nil && regen == nil && gear == nil {
                SingleItemView(itemImage: grenade!.image, itemName: grenade!.name, isRegen: true)
            }
            
        }
    }
}

struct ItemItem_Previews: PreviewProvider {
    static var previews: some View {
        ItemItem(grenade: grenadeData[1])
    }
}

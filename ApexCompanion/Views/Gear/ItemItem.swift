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
    
    var body: some View {
        ZStack {
            VStack {
                Image("season_6_bg").renderingMode(.original)
            }
            .frame(width: 250, height: 180)
                .rotationEffect(.degrees(90))
            .cornerRadius(20)
            
            if gear != nil {
                SingleItemView(itemImage: gear!.image, itemName: gear!.name)
            }
            if regen != nil {
                SingleItemView(itemImage: regen!.image, itemName: regen!.name)
            }
            
        }
    }
}

struct ItemItem_Previews: PreviewProvider {
    static var previews: some View {
        ItemItem(gear: gearData[0])
    }
}

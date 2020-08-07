//
//  OpticsView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/4/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct OpticsView: View {
    
    var weapon: Weapon
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text(weapon.attachments!.optics!.description)
                        .font(.custom("Teko-SemiBold", size: 20))
                        .foregroundColor(.black)
                }
                
                // Top Row
                HStack {
                    
                    // Standard Holo
                    SingleOpticView(image: weapon.attachments!.optics!.standardHolo.image, name: weapon.attachments!.optics!.standardHolo.name)
                    
                    // Standard HCOG
                    SingleOpticView(image: weapon.attachments!.optics!.standardHcog.image, name: weapon.attachments!.optics!.standardHcog.name)
                    
                    // Rare Holo
                    SingleOpticView(image: weapon.attachments!.optics!.rareHolo.image, name: weapon.attachments!.optics!.rareHolo.name)
                }
                
                // Second Row
                HStack {
                    
                    // Rare HCOG
                    SingleOpticView(image: weapon.attachments!.optics!.rareHcog.image, name: weapon.attachments!.optics!.rareHcog.name)
                    
                    // Epic Holo
                    if weapon.attachments!.optics!.epicHolo != nil {
                        
                        SingleOpticView(image: weapon.attachments!.optics!.epicHolo!.image, name: weapon.attachments!.optics!.epicHolo!.name)
                    }
                    
                    // Epic Hcog
                    if weapon.attachments!.optics!.epicHcog != nil {
                        
                        SingleOpticView(image: weapon.attachments!.optics!.epicHcog!.image, name: weapon.attachments!.optics!.epicHcog!.name)
                    }
                    
                    // Digital Threat
                    if weapon.attachments!.optics!.digitalThreat != nil {
                        
                        SingleOpticView(image: weapon.attachments!.optics!.digitalThreat!.image, name: weapon.attachments!.optics!.digitalThreat!.name)
                    }
                }
                
                // Third Row
                if weapon.attachments!.optics!.rareSniper != nil || weapon.attachments!.optics!.epicSniper != nil || weapon.attachments!.optics!.legendarySniper != nil {
                    HStack {
                        
                        // Rare Sniper
                        SingleOpticView(image: weapon.attachments!.optics!.rareSniper!.image, name: weapon.attachments!.optics!.rareSniper!.name)
                        
                        // Epic Sniper
                        SingleOpticView(image: weapon.attachments!.optics!.epicSniper!.image, name: weapon.attachments!.optics!.epicSniper!.name)
                        
                        // Legendary Sniper
                        SingleOpticView(image: weapon.attachments!.optics!.legendarySniper!.image, name: weapon.attachments!.optics!.legendarySniper!.name)
                    }
                }
            }
        }.frame(height: 400)
    }
}

struct OpticsView_Previews: PreviewProvider {
    static var previews: some View {
        OpticsView(weapon: weaponData[0])
    }
}

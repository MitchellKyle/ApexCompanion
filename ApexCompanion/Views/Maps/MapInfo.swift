//
//  MapInfo.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/29/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct MapInfo: View {
    
    var map: Map
    
    @State var mapOne: Bool
    
    var body: some View {
        
        ScrollView {
            
            VStack (spacing: 20) {
                
                HStack {
                    Text("\(map.name) Information")
                        .font(.custom("Teko-Bold", size: 34))
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 1, x: 1, y: 1)
                        .shadow(color: .black, radius: 1, x: -1, y: -1)
                    Spacer()
                }
                .padding(.leading)
                
                VStack (spacing: 20) {
                    
                    InfoItem(subHeader: "Hot Zones", info: map.features.hotZone)
                    
                    InfoItem(subHeader: "Jump Towers", info: map.features.jumpTower)
                    
                    InfoItem(subHeader: "Respawn Beacons", info: map.features.respawnBeacons)
                    
                    InfoItem(subHeader: "Survey Beacons", info: map.features.surveyBeacons)
                    
                    InfoItem(subHeader: mapOne ? "Supply Ship" : "The Train", info: map.features.hotZone)
                            
                    InfoItem(subHeader: mapOne ? "Loot Ticks" : "Geysers", info: map.features.hotZone)
                    
                    InfoItem(subHeader: mapOne ? "Flyers" : "Cargo Bots", info: map.features.hotZone)
                    
                    InfoItem(subHeader: mapOne ? "Charge Towers" : "Vaults", info: map.features.hotZone)
                    
                }
            }
        }
        .padding(.vertical)
        .background(Image("season_6_bg").resizable())
        .edgesIgnoringSafeArea(.all)
    }
}

struct MapInfo_Previews: PreviewProvider {
    static var previews: some View {
        MapInfo(map: mapData[0], mapOne: true)
    }
}

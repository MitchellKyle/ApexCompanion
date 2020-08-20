//
//  MapDetailView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/19/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct MapDetailView: View {
    
    var map: Map
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text("Loot Tiers")
                    Text("Respawn Beacons")
                    Text("Jump Towers")
                    Text("Survey Beacons")
                    Text("Replicator Locations")
                    Text("Bunker Locations")
                    Text("Special Events")
                }
                Spacer()
            }
            MapView(mapImageName: map.image)
        }
    }
}

struct MapDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MapDetailView(map: mapData[0])
    }
}

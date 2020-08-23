//
//  MapRow.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/16/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct MapRow: View {
    
    var maps: [Map] = mapData
    
    var body: some View {

        ScrollView(showsIndicators: false) {

            VStack {
                ForEach (self.maps, id: \.name) { map in
                    NavigationLink(destination: MapDetailView(map: map, mapImage: map.image)) {

                        MapItem(map: map)
                    }
                }
            }
        }
        .navigationBarTitle("Maps", displayMode: .inline)
    }
}

struct MapRow_Previews: PreviewProvider {
    static var previews: some View {
        MapRow(maps: mapData)
    }
}

//
//  MapItem.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/16/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct MapItem: View {
    
    var map: Map
    
    var body: some View {
        VStack {
            Text(map.name)
        }
    }
}

struct MapItem_Previews: PreviewProvider {
    static var previews: some View {
        MapItem(map: mapData[0])
    }
}

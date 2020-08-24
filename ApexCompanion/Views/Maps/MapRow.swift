//
//  MapRow.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/24/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct MapRow: View {
    
    var map: Map
    
    var body: some View {
        VStack {
            HStack {
                Text(map.name)
                    .font(.custom("Teko-Bold", size: 40))
                    .padding(.leading, 5)
                    .foregroundColor(.black)
                Spacer()
            }
            MapItem(map: map)
                .offset(y: -20)
        }
    }
}

struct MapRow_Previews: PreviewProvider {
    static var previews: some View {
        MapRow(map: mapData[0])
    }
}

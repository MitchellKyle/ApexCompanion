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
            Image(map.image)
                .renderingMode(.original)
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
                .padding()
                .background(Color.black.opacity(0.2))
                .cornerRadius(20)
        }
    }
}

struct MapItem_Previews: PreviewProvider {
    static var previews: some View {
        MapItem(map: mapData[0])
    }
}

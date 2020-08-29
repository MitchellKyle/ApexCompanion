//
//  InfoItem.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/29/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct InfoItem: View {
    
    var subHeader: String
    var info: String
    
    var body: some View {
        VStack {
            
            SubHeaderView(text: subHeader)
                .padding(.bottom, -20)
                .padding(.top)
            
            Text(info)
                .font(.custom("Teko-Medium", size: 22))
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .fixedSize(horizontal: false, vertical: true)
                .padding()
            
        }
        .background(Color.white.opacity(0.9))
        .cornerRadius(20)
    }
}

struct InfoItem_Previews: PreviewProvider {
    static var previews: some View {
        InfoItem(subHeader: "Hot Zones", info: mapData[0].features.hotZone)
    }
}

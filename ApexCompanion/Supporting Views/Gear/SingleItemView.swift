//
//  SingleItemView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/15/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct SingleItemView: View {
    
    var itemImage: String
    var itemName: String
    
    var body: some View {
        ZStack {
            Image(itemImage)
                .resizable()
                .renderingMode(.original)
                .offset(y: -10)
                .padding(.all, 10)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 100)
            
            Text(itemName)
                .offset(x: -70, y: 60)
                .font(.custom("Teko-SemiBold", size: 30))
                .padding(.leading)
                .foregroundColor(.black)
        }
    }
}

struct SingleItemView_Previews: PreviewProvider {
    static var previews: some View {
        SingleItemView(itemImage: gearData[0].image, itemName: gearData[0].name)
    }
}

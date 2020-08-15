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
    var isRegen: Bool
    
    var body: some View {
        ZStack {
            if !isRegen {
               Image(itemImage)
                .resizable()
                .renderingMode(.original)
                .offset(y: -10)
                .padding(.all, 10)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 100)
            }
            
            if isRegen {
                Image(itemImage)
                    .resizable()
                    .renderingMode(.original)
                    .padding(.all, 5)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(10)
                    .offset(y: -10)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
            }
            
            Text(itemName)
                .offset(y: 60)
                .font(.custom("Teko-SemiBold", size: 30))
                .foregroundColor(.black)
        }
    }
}

struct SingleItemView_Previews: PreviewProvider {
    static var previews: some View {
        SingleItemView(itemImage: regenData[0].image, itemName: gearData[0].name, isRegen: true)
    }
}

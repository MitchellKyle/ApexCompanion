//
//  HomeItem.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 9/1/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct HomeItem: View {
    
    var backgroundImage: String
    var title: String
    
    var body: some View {
        ZStack {
            Image(backgroundImage)
                .renderingMode(.original)
                .resizable()
                .cornerRadius(20)
                .frame(width: 170, height: 220)
            Text(title)
                .font(.custom("Teko-SemiBold", size: 30))
                .foregroundColor(.white)
                .shadow(color: .black, radius: 2, x: 2, y: 2)
                .offset(y: 65)
        }
    }
}

struct HomeItem_Previews: PreviewProvider {
    static var previews: some View {
        HomeItem(backgroundImage: "tips_home", title: "Tips")
    }
}

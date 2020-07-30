//
//  WDHeaderView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/26/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct WDHeaderView: View {
    
    var weaponName: String
    
    var weaponImage: String
    
    var body: some View {
        VStack {
            Image(weaponImage)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 340, height: 160)
                .padding(.all, 10)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
                
            HStack {
                Text(weaponName)
                    .font(.custom("Teko-Bold", size: 45))
                    .foregroundColor(.white)
                    .shadow(radius: 2)
                
                Spacer()
            } .padding(.leading)
        }.padding(.top)
    }
}

struct WDHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        WDHeaderView(weaponName: weaponData[0].name, weaponImage: weaponData[5].image)
    }
}

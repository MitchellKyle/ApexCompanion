//
//  WDDescriptionView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/28/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct WDDescriptionView: View {
    
    var description: String
    
    var body: some View {
        VStack {
            Text(description)
                .padding(.all)
                .background(Color.white.opacity(0.75))
                .cornerRadius(20)
                .font(.custom("Teko-Light", size: 25))
        }.padding([.leading, .bottom, .trailing])
    }
}

struct WDDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        WDDescriptionView(description: weaponData[0].description)
    }
}

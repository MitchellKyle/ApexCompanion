//
//  HeaderView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/14/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
            .font(.custom("Teko-Bold", size: 45))
                .foregroundColor(.black)
            Spacer()
        }
        .frame(height: 40)
        .padding(.all)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: weaponData[0].name)
    }
}

//
//  WDSubheaderView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/28/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct WDSubheaderView: View {
    
    var subheader: String
    
    var body: some View {
        HStack {
            Text(subheader)
                .font(.custom("Teko-SemiBold", size: 30))
                .foregroundColor(.white)
                .shadow(radius: 2)
            Spacer()
        }
        .padding(.leading)
    }
}

struct WDSubheaderView_Previews: PreviewProvider {
    static var previews: some View {
        WDSubheaderView(subheader: "Clip Sizes")
    }
}

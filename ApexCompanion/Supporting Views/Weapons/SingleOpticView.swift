//
//  SingleOpticView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/7/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct SingleOpticView: View {
    
    var image: String
    var name: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(width: 50, height: 50)
            Text(name)
                .font(.custom("Teko-SemiBold", size: 20))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .lineLimit(3)
            .frame(height: 88)
        }.frame(width: 95)
        .padding(.all, 10)
    }
}

struct SingleOpticView_Previews: PreviewProvider {
    static var previews: some View {
        SingleOpticView(image: weaponData[11].attachments!.optics!.legendarySniper!.image, name: weaponData[11].attachments!.optics!.legendarySniper!.name)
    }
}

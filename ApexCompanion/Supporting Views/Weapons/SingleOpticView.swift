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
                .lineLimit(2)
            .frame(height: 58)
        }.frame(width: 95)
        .padding(.all, 10)
    }
}

struct SingleOpticView_Previews: PreviewProvider {
    static var previews: some View {
        SingleOpticView(image: weaponData[0].attachments!.optics!.rareHcog.image, name: weaponData[0].attachments!.optics!.rareHcog.name)
    }
}

//
//  SingleStockView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/7/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct SingleStockView: View {

    var image: String
    var name: String
    var description: String
    var levelColor: UIColor

    var body: some View {
        HStack {
            Spacer()
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.all, 5)
                    .background(Color(levelColor))
                    .cornerRadius(10)
                Text(name)
                    .font(.custom("Teko-SemiBold", size: 20))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
            }.frame(width: 85)
            Spacer()
            Text(description)
                .font(.custom("Teko-SemiBold", size: 20))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .frame(width: 250)
            Spacer()
        }
    }
}

struct SingleStockView_Previews: PreviewProvider {
    static var previews: some View {
        SingleStockView(image: weaponData[0].attachments!.stocks!.stockIconWhite, name: weaponData[0].attachments!.stocks!.commonName, description: weaponData[0].attachments!.stocks!.commonDescription, levelColor: Constants.Colors.levelOne)
    }
}

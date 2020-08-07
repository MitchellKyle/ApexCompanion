//
//  StocksView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/5/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct StocksView: View {
    
    var weapon: Weapon
    
    var body: some View {
        ScrollView {
            VStack {
                Text(weapon.attachments!.stocks!.description)
                    .font(.custom("Teko-SemiBold", size: 20))
                    .foregroundColor(.black)
                HStack {
                    Spacer()
                    VStack {
                        Image(weapon.attachments!.stocks!.stockIconWhite)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.all, 5)
                            .background(Color(red: 61/255, green: 65/255, blue: 66/255))
                            .cornerRadius(10)
                        Text(weapon.attachments!.stocks!.commonName)
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                    }.frame(width: 85)
                    Spacer()
                    Text(weapon.attachments!.stocks!.commonDescription)
                        .font(.custom("Teko-SemiBold", size: 20))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(width: 250)
                    Spacer()
                }
                HStack {
                    Spacer()
                    VStack {
                        Image(weapon.attachments!.stocks!.stockIconWhite)
                            .resizable()
                            .frame(width: 50, height: 50)
                        .padding(.all, 5)
                        .background(Color(red: 0/255, green: 75/255, blue: 137/255))
                        .cornerRadius(10)
                        Text(weapon.attachments!.stocks!.rareName)
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                    }.frame(width: 85)
                    Spacer()
                    Text(weapon.attachments!.stocks!.rareDescription)
                        .font(.custom("Teko-SemiBold", size: 20))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                    .frame(width: 250)
                    Spacer()
                }
                HStack {
                    Spacer()
                    VStack {
                        Image(weapon.attachments!.stocks!.stockIconWhite)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.all, 5)
                            .background(Color(red: 69/255, green: 26/255, blue: 97/255))
                            .cornerRadius(10)
                        Text(weapon.attachments!.stocks!.epicName)
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                    }.frame(width: 85)
                    Spacer()
                    Text(weapon.attachments!.stocks!.epicDescription)
                        .font(.custom("Teko-SemiBold", size: 20))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(width: 250)
                    Spacer()
                }
            }
        }.frame(height: 400)
    }
}

struct StocksView_Previews: PreviewProvider {
    static var previews: some View {
        StocksView(weapon: weaponData[0])
    }
}

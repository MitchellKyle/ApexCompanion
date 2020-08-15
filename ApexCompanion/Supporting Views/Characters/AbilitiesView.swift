//
//  AbilitiesView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/2/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct AbilitiesView: View {
    
    @State private var showInfo = true
    @State private var showTips = false
    
    var abilityName: String
    var abilityImage: String
    var abilityDescription: String
    var abilityCD: String
    var abilityInfo: String
    var abilityTips: String
    
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                // Name
                Text(abilityName)
                    .font(.custom("Teko-SemiBold", size: 30))
                    .foregroundColor(.black)
                    .frame(width: 200, height: 100)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                Spacer()
                // Image
                Image(abilityImage)
                    .resizable()
                    .frame(width: 55, height: 55)
                Spacer()
            }
            // Description
            Text(abilityDescription)
                .font(.custom("Teko-SemiBold", size: 20))
                .multilineTextAlignment(.leading)
                .foregroundColor(.black)
                .fixedSize(horizontal: false, vertical: true)
            // Cooldown
            Text("Cooldown -> \(abilityCD)")
                .font(.custom("Teko-SemiBold", size: 20))
                .padding(.top)
                .foregroundColor(.black)

            // Info/Tips
            HStack {
                Spacer()
                Button(action: {
                    self.showInfo = true
                    self.showTips = false
                }) {
                    Text("Info")
                        .font(.custom("Teko-SemiBold", size: 25))
                        .padding(.all, 10)
                        .foregroundColor(showInfo ? .white : .black)
                        .background(showInfo ?  Color.black : Color.clear)
                        .cornerRadius(10)
                }
                Spacer()
                Button(action: {
                    self.showInfo = false
                    self.showTips = true
                    
                }) {
                    Text("Tips")
                        .font(.custom("Teko-SemiBold", size: 25))
                        .padding(.all, 10)
                        .foregroundColor(showTips ? .white : .black)
                        .background(showTips ?  Color.black : Color.clear)
                        .cornerRadius(10)
                }
                Spacer()
            }.padding(.vertical)
            ScrollView {
                VStack {
                    // Info
                    if showInfo {
                        Text(abilityInfo)
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    // Tips
                    else {
                        Text(abilityTips)
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
            }
        }.padding()
        .background(Color.white.opacity(0.9))
        .cornerRadius(20)
    }
}

struct AbilitiesView_Previews: PreviewProvider {
    static var previews: some View {
        AbilitiesView(abilityName: characterData[5].passiveAbility.name, abilityImage: characterData[5].passiveAbility.passiveImage, abilityDescription: characterData[5].passiveAbility.passiveDescription, abilityCD: characterData[5].passiveAbility.cd, abilityInfo: characterData[5].passiveAbility.info, abilityTips: characterData[5].passiveAbility.tips)
    }
}

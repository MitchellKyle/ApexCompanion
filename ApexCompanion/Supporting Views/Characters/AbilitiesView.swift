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
                Spacer()
                // Image
                Image(abilityImage)
                Spacer()
            }
            // Description
            Text(abilityDescription)
                .font(.custom("Teko-SemiBold", size: 20))
                .multilineTextAlignment(.leading)
            // Cooldown
            Text("Cooldown -> \(abilityCD)")
                .font(.custom("Teko-SemiBold", size: 20))
                .padding(.top)

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
                        .background(showInfo ?  Color.black.opacity(1.0) : Color.white.opacity(0.0))
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
                        .background(showTips ?  Color.black.opacity(1.0) : Color.white.opacity(0.0))
                        .cornerRadius(10)
                }
                Spacer()
            }.padding(.vertical)
            VStack {
                // Info
                if showInfo {
                    Text(abilityInfo)
                        .font(.custom("Teko-SemiBold", size: 20))
                }
                // Tips
                else {
                    Text(abilityTips)
                        .font(.custom("Teko-SemiBold", size: 20))
                }
            }
        }.padding()
        .background(Color.white.opacity(0.9))
        .cornerRadius(20)
    }
}

struct AbilitiesView_Previews: PreviewProvider {
    static var previews: some View {
        AbilitiesView(abilityName: characterData[0].passiveAbility.name, abilityImage: characterData[0].passiveAbility.passiveImage, abilityDescription: characterData[0].passiveAbility.passiveDescription, abilityCD: characterData[0].passiveAbility.cd, abilityInfo: characterData[0].passiveAbility.info, abilityTips: characterData[0].passiveAbility.tips)
    }
}

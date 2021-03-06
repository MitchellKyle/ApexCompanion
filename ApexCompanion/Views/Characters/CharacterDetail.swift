//
//  CharacterDetail.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/1/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct CharacterDetail: View {
    
    var character: Character
    
    @State private var showTactical = true
    @State private var showPassive = false
    @State private var showUltimate = false
    @State private var showPerk = false
    
    var body: some View {
        ZStack {
            Image("season_6_bg")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                
                // Header
                VStack(spacing: 0) {
                    // Character Name
                    HeaderView(title: character.name)
                    
                    ZStack {
                        // Character Image
                        HStack {
                            Image(character.image)
                                .resizable()
                                .frame(width: 220, height: 250)
                                .cornerRadius(20)
                                .padding()
                            Spacer()
                        }
                        HStack {
                            Spacer()
                            VStack {
                                // Character Info
                                Text(character.subHeader)
                                    .font(.custom("Teko-SemiBold", size: 25))
                                    .multilineTextAlignment(.center)
                                    .padding(.leading, 10)
                                    .foregroundColor(.black)
                                
                                Image(character.typeImage)
                            }.frame(width: 200)
                                .padding(.trailing, 10)
                        }
                    }.background(Color.init(red: 228/255, green: 225/255, blue: 216/255))
                        .cornerRadius(20)
                }
                
                // Description
                VStack {
                    SubHeaderView(text: "Description")
                    VStack {
                        Text(character.description)
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                    }.padding()
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(20)
                }
                
                
                // Tactical Ability
                VStack (spacing: 10) {
                    SubHeaderView(text: "Abilities")
                    
                    HStack {
                        Spacer()
                        // Show Tactical Button
                        Button(action: {
                            self.showTactical = true
                            self.showPassive = false
                            self.showUltimate = false
                            self.showPerk = false
                            
                        }) {
                            AbilityButtonsView(name: "Tactical", condition: showTactical)
                        }
                            
                        Spacer()
                        // Show Passive Button
                        Button(action: {
                            self.showTactical = false
                            self.showPassive = true
                            self.showUltimate = false
                            self.showPerk = false
                            
                        }) {
                            AbilityButtonsView(name: "Passive", condition: showPassive)
                        }
                        Spacer()
                        // Show Ultimate Button
                        Button(action: {
                            self.showTactical = false
                            self.showPassive = false
                            self.showUltimate = true
                            self.showPerk = false
                            
                        }) {
                            AbilityButtonsView(name: "Ultimate", condition: showUltimate)
                        }
                        Spacer()
                        // Show Passive Perk Button
                        if character.passivePerk != nil {
                            Button(action: {
                                self.showTactical = false
                                self.showPassive = false
                                self.showUltimate = false
                                self.showPerk = true
                                
                            }) {
                                AbilityButtonsView(name: "Perk", condition: showPerk)
                            }
                            Spacer()
                        }
                    }
                    
                    // Show Tactical Ability
                    if showTactical {
                        AbilitiesView(
                            abilityName: character.tacticalAbility.name,
                            abilityImage: character.tacticalAbility.tacticalImage,
                            abilityDescription: character.tacticalAbility.tacticalDescription,
                            abilityCD: character.tacticalAbility.cd,
                            abilityInfo: character.tacticalAbility.info,
                            abilityTips: character.tacticalAbility.tips)
                    }
                    // Show Passive Ability
                    if showPassive {
                        AbilitiesView(
                            abilityName: character.passiveAbility.name,
                            abilityImage: character.passiveAbility.passiveImage,
                            abilityDescription: character.passiveAbility.passiveDescription,
                            abilityCD: character.passiveAbility.cd,
                            abilityInfo: character.passiveAbility.info,
                            abilityTips: character.passiveAbility.tips)
                    }
                    // Show Ultimate Ability
                    if showUltimate {
                        AbilitiesView(
                            abilityName: character.ultimateAbility.name,
                            abilityImage: character.ultimateAbility.ultimateImage,
                            abilityDescription: character.ultimateAbility.ultimateDescription,
                            abilityCD: character.ultimateAbility.cd,
                            abilityInfo: character.ultimateAbility.info,
                            abilityTips: character.ultimateAbility.tips)
                    }
                    // Show Perk (If exists)
                    if showPerk {
                        AbilitiesView(
                            abilityName: character.passivePerk!.name,
                            abilityImage: character.passivePerk!.image,
                            abilityDescription: character.passivePerk!.description,
                            abilityCD: "N/A",
                            abilityInfo: character.passivePerk!.info,
                            abilityTips: "")
                    }
                    
                }
                .padding(.top)
            }
            .padding(.bottom,5)
        }
    }
}

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetail(character: characterData[12])
    }
}

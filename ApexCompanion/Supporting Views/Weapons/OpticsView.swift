//
//  OpticsView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/4/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct OpticsView: View {
    
    var weapon: Weapon
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text(weapon.attachments!.optics!.description)
                        .font(.custom("Teko-SemiBold", size: 20))
                        .foregroundColor(.black)
                }
                
                // Top Row
                HStack {
                    
                    // Standard Holo
                    VStack {
                        Image(weapon.attachments!.optics!.standardHolo.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text(weapon.attachments!.optics!.standardHolo.name)
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                        .frame(height: 58)
                    }.frame(width: 95)
                    .padding(.all, 10)
                    
                    // Standard HCOG
                    VStack {
                        Image(weapon.attachments!.optics!.standardHcog.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text(weapon.attachments!.optics!.standardHcog.name)
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                        .frame(height: 58)
                    }.frame(width: 95)
                    .padding(.all, 10)
                    
                    // Rare Holo
                    VStack {
                        Image(weapon.attachments!.optics!.rareHolo.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text(weapon.attachments!.optics!.rareHolo.name)
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                            .frame(height: 58)
                    }.frame(width: 95)
                    .padding(.all, 10)
                }
                
                // Second Row
                HStack {
                    
                    // Rare HCOG
                    VStack {
                        Image(weapon.attachments!.optics!.rareHcog.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text(weapon.attachments!.optics!.rareHcog.name)
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                            .frame(height: 58)
                    }.frame(width: 95)
                    .padding(.all, 10)
                    
                    // Epic Holo
                    if weapon.attachments!.optics!.epicHolo != nil {
                        
                        VStack {
                            Image(weapon.attachments!.optics!.epicHolo!.image)
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text(weapon.attachments!.optics!.epicHolo!.name)
                                .font(.custom("Teko-SemiBold", size: 20))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                                .frame(height: 58)
                        }.frame(width: 95)
                        .padding(.all, 10)
                    }
                    
                    // Epic Hcog
                    if weapon.attachments!.optics!.epicHcog != nil {
                        
                        VStack {
                            Image(weapon.attachments!.optics!.epicHcog!.image)
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text(weapon.attachments!.optics!.epicHcog!.name)
                                .font(.custom("Teko-SemiBold", size: 20))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                                .frame(height: 58)
                        }.frame(width: 95)
                        .padding(.all, 10)
                    }
                    
                    // Digital Threat
                    if weapon.attachments!.optics!.digitalThreat != nil {
                        
                        VStack {
                            Image(weapon.attachments!.optics!.digitalThreat!.image)
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text(weapon.attachments!.optics!.digitalThreat!.name)
                                .font(.custom("Teko-SemiBold", size: 20))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                                .frame(height: 58)
                        }.frame(width: 95)
                        .padding(.all, 10)
                    }
                }
                
                // Third Row
                if weapon.attachments!.optics!.rareSniper != nil || weapon.attachments!.optics!.epicSniper != nil || weapon.attachments!.optics!.legendarySniper != nil {
                    HStack {
                        
                        // Rare Sniper
                        VStack {
                            Image(weapon.attachments!.optics!.rareSniper!.image)
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text(weapon.attachments!.optics!.rareSniper!.name)
                                .font(.custom("Teko-SemiBold", size: 20))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                                .frame(height: 58)
                        }.frame(width: 95)
                        .padding(.all, 10)
                        
                        // Epic Sniper
                        VStack {
                            Image(weapon.attachments!.optics!.epicSniper!.image)
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text(weapon.attachments!.optics!.epicSniper!.name)
                                .font(.custom("Teko-SemiBold", size: 20))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                                .frame(height: 58)
                        }.frame(width: 95)
                        .padding(.all, 10)
                        
                        // Legendary Sniper
                        VStack {
                            Image(weapon.attachments!.optics!.legendarySniper!.image)
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text(weapon.attachments!.optics!.legendarySniper!.name)
                                .font(.custom("Teko-SemiBold", size: 20))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .lineLimit(2)
                                .frame(height: 58)
                        }.frame(width: 95)
                        .padding(.all, 10)
                    }
                }
            }
        }.frame(height: 400)
    }
}

struct OpticsView_Previews: PreviewProvider {
    static var previews: some View {
        OpticsView(weapon: weaponData[0])
    }
}

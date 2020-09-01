//
//  GrenadeDetail.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/19/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct GrenadeDetail: View {
    
    @State private var showInformation = true
    @State private var showInteractions = false
    
    var grenade: Grenades
    
    var body: some View {
        ZStack {
            Image("season_6_bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                HeaderView(title: grenade.name)
                VStack {
                    Text(grenade.description)
                        .font(.custom("Teko-SemiBold", size: 25))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.leading)
                    
                    VStack {
                            Image(grenade.image)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .padding(.bottom, -5)
                            Text("Time to use -> \(grenade.ignitionTime)")
                                .font(.custom("Teko-Medium", size: 23))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding(.leading)
                        }
                    .padding(.bottom)
                    
                    VStack {
                        HStack {
                            Spacer()
                            Button(action: {
                                self.showInformation = true
                                self.showInteractions = false
                            }) {
                                AbilityButtonsView(name: "Information", condition: showInformation)
                            }
                            
                            Spacer()
                            Button(action: {
                                self.showInformation = false
                                self.showInteractions = true
                            }) {
                                AbilityButtonsView(name: "Interactions", condition: showInteractions)
                            }
                            Spacer()
                        }
                        .padding()
                        
                        if showInformation {
                            Text(grenade.info)
                                .font(.custom("Teko-Regular", size: 23))
                                .foregroundColor(.black)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        if showInteractions {
                            Text(grenade.tips)
                                .font(.custom("Teko-Regular", size: 23))
                                .foregroundColor(.black)
                            .fixedSize(horizontal: false, vertical: true)
                        }
                    }.padding()
                }
                .padding(.vertical)
                .background(Color.white.opacity(0.9))
                .cornerRadius(20)
            }
            .padding(.bottom, 5)
        }
    }
}

struct GrenadeDetail_Previews: PreviewProvider {
    static var previews: some View {
        GrenadeDetail(grenade: grenadeData[0])
    }
}

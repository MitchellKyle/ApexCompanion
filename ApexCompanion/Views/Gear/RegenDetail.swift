//
//  RegenDetail.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/15/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct RegenDetail: View {
    
    @State private var showInformation = true
    @State private var showInteractions = false
    
    var regen: Regen
    
    var body: some View {
        ZStack {
            Image("season_6_bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                    HStack {
                        Text(regen.name)
                        .font(.custom("Teko-Bold", size: 35))
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .frame(height: 40)
                    .padding(.all)
                VStack {
                    Text(regen.description)
                        .font(.custom("Teko-SemiBold", size: 25))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.leading)
                    
                    VStack {
                            Image(regen.image)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .padding(.bottom, -5)
                            Text("Time to use -> \(regen.timeToUse)")
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
                            Text(regen.info)
                                .font(.custom("Teko-Regular", size: 23))
                                .foregroundColor(.black)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        if showInteractions {
                            Text(regen.interactions)
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
        }
    }
}

struct RegenDetail_Previews: PreviewProvider {
    static var previews: some View {
        RegenDetail(regen: regenData[6])
    }
}

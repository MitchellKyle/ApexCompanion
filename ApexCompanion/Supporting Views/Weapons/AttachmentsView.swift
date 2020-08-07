//
//  AttachmentsView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/3/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct AttachmentsView: View {
    
    var weapon: Weapon
    
    @State private var showClips = true
    @State private var showOptics = false
    @State private var showStock = false
    @State private var showStabilizer = false
    @State private var showHop = false
    @State private var showBolt = false
    
    var body: some View {
        
        VStack {
            // Headline
            HStack {
                Text("Attachments")
                    .font(.custom("Teko-SemiBold", size: 30))
                    .foregroundColor(.black)
                    
                Spacer()
            }.padding(.leading)
                .padding(.bottom, -10)
            
            // Attachment Buttons
            VStack {
                HStack {
                    Spacer()
                    
                    // Clips Button
                    if weapon.attachments!.clips != nil {
                        Button(action: {
                            self.showClips = true
                            self.showOptics = false
                            self.showStock = false
                            self.showStabilizer = false
                            self.showHop = false
                            self.showBolt = false
                        }) {
                            Image(weapon.clipIcon)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding(.all, 5)
                                .background(showClips ? Color.black : Color.white)
                                .foregroundColor(showClips ? Color.white : Color.black)
                        }
                        Spacer()
                    }
                    
                    // Optics Button
                    if weapon.attachments!.optics != nil {
                        Button(action: {
                            self.showClips = false
                            self.showOptics = true
                            self.showStock = false
                            self.showStabilizer = false
                            self.showHop = false
                            self.showBolt = false
                        }) {
                            Image(weapon.attachments!.optics!.opticIcon)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding(.all, 5)
                                .background(showOptics ? Color.black : Color.white)
                                .foregroundColor(showOptics ? Color.white : Color.black)
                        }
                        Spacer()
                    }
                    
                    // Standard Stock Button
                    if weapon.attachments!.stocks != nil {
                        Button(action: {
                            self.showClips = false
                            self.showOptics = false
                            self.showStock = true
                            self.showStabilizer = false
                            self.showHop = false
                            self.showBolt = false
                        }) {
                            Image(weapon.attachments!.stocks!.stockIcon)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding(.all, 5)
                                .background(showStock ? Color.black : Color.white)
                                .foregroundColor(showStock ? Color.white : Color.black)
                        }
                        Spacer()
                    }
                    
                    // Barrel Stabilizer Button
                    if weapon.attachments!.stabilizer != nil {
                        Button(action: {
                            self.showClips = false
                            self.showOptics = false
                            self.showStock = false
                            self.showStabilizer = true
                            self.showHop = false
                            self.showBolt = false
                        }) {
                            Image(weapon.attachments!.stabilizer!.stabilizerIcon)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding(.all, 5)
                                .background(showStabilizer ? Color.black : Color.white)
                                .foregroundColor(showStabilizer ? Color.white : Color.black)
                        }
                        Spacer()
                    }
                    
                    // Hop-Ups Button
                    if weapon.attachments!.hop != nil {
                        Button(action: {
                            self.showClips = false
                            self.showOptics = false
                            self.showStock = false
                            self.showStabilizer = false
                            self.showHop = true
                            self.showBolt = false
                        }) {
                            Image(weapon.attachments!.hop!.icon)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding(.all, 5)
                                .background(showHop ? Color.black : Color.white)
                                .foregroundColor(showHop ? Color.white : Color.black)
                        }
                        Spacer()
                    }
                    
                    // Hop-Ups Button
                    if weapon.attachments!.bolt != nil {
                        Button(action: {
                            self.showClips = false
                            self.showOptics = false
                            self.showStock = false
                            self.showStabilizer = false
                            self.showHop = false
                            self.showBolt = true
                        }) {
                            Image(weapon.attachments!.bolt!.icon)
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding(.all, 5)
                                .background(showHop ? Color.black : Color.white)
                                .foregroundColor(showHop ? Color.white : Color.black)
                        }
                        Spacer()
                    }
                } // End of Button HStack
                
                VStack {
                    // Clips Detail View
                    if showClips {
                        ClipsView(description: weapon.attachments!.clips!.description, icon: weapon.attachments!.clips!.clipIconWhite, levelOne: weapon.attachments!.clips!.levelOne, levelTwo: weapon.attachments!.clips!.levelTwo, levelThree: weapon.attachments!.clips!.levelThree)
                    }
                    
                    // Optics Detail View
                    if showOptics {
                        OpticsView(weapon: weapon)
                    }
                    
                    // Stocks Detail View
                    if showStock {
                        StocksView(weapon: weapon)
                    }
                }
                
            } // End of Content VStack
                .padding(.top)
            .background(Color.white.opacity(0.9))
            .cornerRadius(20)
        }.padding(.top) // End of Main VStack
    }
}

struct AttachmentsView_Previews: PreviewProvider {
    static var previews: some View {
        AttachmentsView(weapon: weaponData[0])
    }
}

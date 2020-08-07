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
            SubHeaderView(text: "Attachments")
            
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
                            AttachmentButtonsView(image: weapon.attachments!.clips!.clipIconWhite, condition: showClips)
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
                            AttachmentButtonsView(image: weapon.attachments!.optics!.opticIcon, condition: showOptics)
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
                            AttachmentButtonsView(image: weapon.attachments!.stocks!.stockIconWhite, condition: showStock)
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
                            AttachmentButtonsView(image: weapon.attachments!.stabilizer!.stabilizerIconWhite, condition: showStabilizer)
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
                            AttachmentButtonsView(image: weapon.attachments!.hop!.icon, condition: showHop)
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
                            AttachmentButtonsView(image: weapon.attachments!.bolt!.icon, condition: showBolt)
                        }
                        Spacer()
                    }
                } // End of Button HStack
                
                VStack {
                    // Clips Detail View
                    if showClips {
                        ClipsView(weapon: weapon)
                    }
                    
                    // Optics Detail View
                    if showOptics {
                        OpticsView(weapon: weapon)
                    }
                    
                    // Stocks Detail View
                    if showStock {
                        StocksView(weapon: weapon, isStabilizer: false)
                    }
                    
                    // Stabilizer Detail View
                    if showStabilizer {
                        StocksView(weapon: weapon, isStabilizer: true)
                    }
                }
                
            } // End of Content VStack
            .padding(.top)
            .background(Color.white.opacity(0.9))
            .cornerRadius(20)
        } // End of Main VStack
        .padding(.top)
    }
}

struct AttachmentsView_Previews: PreviewProvider {
    static var previews: some View {
        AttachmentsView(weapon: weaponData[0])
    }
}

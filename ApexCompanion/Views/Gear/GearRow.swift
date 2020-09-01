//
//  GearRow.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/15/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct GearRow: View {
    
    var gear: [Gear] = gearData
    var regen: [Regen] = regenData
    var grenade: [Grenades] = grenadeData
    
    var body: some View {
        ScrollView {
            VStack {
                
                HStack {
                    Text("Gear")
                        .font(.custom("Teko-Bold", size: 40))
                        .padding(.leading, 5)
                    Spacer()
                }
                .padding(.bottom, -25)
                
                ScrollView(.horizontal, showsIndicators: false) {
                        
                    HStack(alignment: .top) {
                        ForEach (self.gear, id: \.name) { gear in
                            NavigationLink(destination: GearDetail(gear: gear)) {
                            
                                ItemItem(gear: gear)
                            }
                        }
                    }
                }
                
                HStack {
                    Text("Regen Items")
                        .font(.custom("Teko-Bold", size: 40))
                        .padding(.leading, 5)
                    Spacer()
                }
                .padding(.bottom, -25)
                
                ScrollView(.horizontal, showsIndicators: false) {
                        
                    HStack(alignment: .top) {
                        ForEach (self.regen, id: \.name) { regen in
                            NavigationLink(destination: RegenDetail(regen: regen)) {
                            
                                ItemItem(regen: regen)
                            }
                        }
                    }
                }
                
                HStack {
                    Text("Grenades")
                        .font(.custom("Teko-Bold", size: 40))
                        .padding(.leading, 5)
                    Spacer()
                }
                .padding(.bottom, -25)

                ScrollView(.horizontal, showsIndicators: false) {

                    HStack(alignment: .top) {
                        ForEach (self.grenade, id: \.name) { grenade in
                            NavigationLink(destination: GrenadeDetail(grenade: grenade)) {

                                ItemItem(grenade: grenade)
                            }
                        }
                    }
                }
            }
            .padding(.horizontal)
            .padding(.top, 50)
            .navigationBarHidden(false)
            .navigationBarTitle("Weapon Types", displayMode: .inline)
        }
        .padding(.bottom, 10)
    }
}

struct GearRow_Previews: PreviewProvider {
    static var previews: some View {
        GearRow(gear: gearData)
    }
}

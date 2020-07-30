//
//  WeaponDetail.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/25/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct WeaponDetail: View {
    
    var weapon: Weapon
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                // Main VStack
                VStack {
                    
                    // Weapon Image and Name
                    WDHeaderView(weaponName: weapon.name, weaponImage: weapon.image)
                    
                    Spacer()
                    
                    // Weapon Details
                    VStack {
                        
                        // Weapon and Ammo Type
                        VStack {
                            
                            HStack {
                                
                                Spacer()
                                
                                // Weapon Type
                                WDTypesView(typeIcon: weapon.weaponTypeIcon, type: weapon.type, typeTitle: "Weapon Type", iconWidth: 100)
                                
                                Spacer()
                                
                                // Ammo Type
                                WDTypesView(typeIcon: weapon.ammoTypeIcon, type: weapon.ammoType, typeTitle: "Ammo Type", iconWidth: 50)
                                
                                Spacer()
                                
                            }
                        }
                        
                        Spacer()
                        
                        // Fire Modes and Recoil
                        VStack {
                            HStack {
                                
                                Spacer()
                                
                                // Fire Modes
                                WDFireModeView(modeOne: weapon.fireMode.modeOne, modeTwo: weapon.fireMode.modeTwo)
                                
                                Spacer()
                                
                                // Recoil
                                WDRecoilView(recoilText: weapon.recoil)
                                
                                Spacer()
                                
                            }
                        }
                        
                        Spacer()
                        
                        // Damage
                        VStack {
                            WDSubheaderView(subheader: "Damage")
                            
                            // Damage Numbers
                            HStack {
                                
                                Spacer()
                                
                                WDDamageView(location: "Head", damage: weapon.damage.head)
                                
                                Spacer()
                                
                                WDDamageView(location: "Body", damage: weapon.damage.body)
                                
                                Spacer()
                                
                                WDDamageView(location: "Legs", damage: weapon.damage.lowerBody)
                                
                                Spacer()
                            }
                        }
                        
                        Spacer()
                        
                        // Clip Sizes
                        VStack {
                            WDSubheaderView(subheader: "Magazine Capacity")
                            
                            VStack {
                                HStack {
                                    if weapon.clipSize.levelOne != nil {
                                        Spacer()
                                    }
                                    
                                    // Standard
                                    WDClipsView(clipText: "Standard", clipIcon: weapon.clipIcon, red: 0.0, green: 0.0, blue: 0.0, clipSize: weapon.clipSize.standard)
                                    
                                    
                                    // Show Level One if it exists
                                    if weapon.clipSize.levelOne != nil {
                                        
                                        Spacer()
                                        
                                        // Level One
                                        WDClipsView(clipText: "Level One", clipIcon: weapon.clipIcon, red: 61/255, green: 65/255, blue: 66/255, clipSize: weapon.clipSize.levelOne!)
                                        
                                        Spacer()
                                    }
                                }
                                
                                Spacer()
                                
                                // Show level two and three if they exists
                                if weapon.clipSize.levelTwo != nil && weapon.clipSize.levelThree != nil {
                                    
                                    Spacer()
                                    
                                    HStack {
                                        
                                        Spacer()
                                        
                                        // Level Two
                                        WDClipsView(clipText: "Level Two", clipIcon: weapon.clipIcon, red: 0/255, green: 75/255, blue: 137/255, clipSize: weapon.clipSize.levelTwo!)
                                        
                                        Spacer()
                                        
                                        // Level Three
                                        WDClipsView(clipText: "Level Three", clipIcon: weapon.clipIcon, red: 69/255, green: 26/255, blue: 97/255, clipSize: weapon.clipSize.levelThree!)
                                        
                                        Spacer()
                                    }
                                }
                            }
                        }
                    }
                    
                    
                    Spacer()
                    
                    // Weapon Description
                    VStack {
                        WDSubheaderView(subheader: "Description")
                        
                        // Description
                        WDDescriptionView(description: weapon.description)
                    }
                }
            }
        }
    }
}



struct WeaponDetail_Previews: PreviewProvider {
    static var previews: some View {
        WeaponDetail(weapon: weaponData[0])
    }
}

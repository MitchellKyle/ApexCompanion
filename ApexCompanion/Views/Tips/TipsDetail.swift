//
//  TipsDetail.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/24/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct TipsDetail: View {
    var body: some View {
        ScrollView {
            VStack {
                HeaderView(title: "Tips / Tricks")
                    .padding(.top, 50)
                
                VStack {
                    SubHeaderView(text: "Game Play")
                    VStack {
                        HStack {
                            Text("Finishers")
                                .font(.custom("Teko-Regular", size: 25))
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.leading)
                        
                        Text("Finishers can be performed on enemies that have been knocked down and not yet out of the game. Finishers can be risky as they take about 6 seconds to perform and it is highly likely their teammate will show up to help out a downed legend. Finishers can be beneficial however, completeing a finisher will completely restore shields. Pick when to use a finisher wisely, it can very beneficial or devastating.")
                            .font(.custom("Teko-Regular", size: 22))
                            .foregroundColor(.black)
                            .padding(.horizontal, 25)
                            .padding(.bottom, 5)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .padding(.vertical)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(20)
                    .padding(.bottom)
                    
                    VStack {
                        HStack {
                            Text("Launching")
                                .font(.custom("Teko-Regular", size: 25))
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.leading)
                        
                        Text("When launching into a map, the jump master is in control of when the launch takes place. The team glides together under the jump master's control. Breaking away from the team will allow you to glide faster and potential get the jump on enemy teams. Just be aware as this can also put you further from where your team landed and can leave you in an outnumbered fight.")
                            .font(.custom("Teko-Regular", size: 22))
                            .foregroundColor(.black)
                            .padding(.horizontal, 25)
                            .padding(.bottom, 5)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    .padding(.vertical)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(20)
                    .padding(.bottom)
                }
                
                VStack {
                    SubHeaderView(text: "Crafting")
                    
                    VStack {
                        
                        Text("Crafting is new to the game as of Seaon 6. A player can collect crafting materials that allows them to craft gear, weapons, weapon attachments, ammo, or level up an evo shield. A player can get crafting materials by opening any bin (5 per bin) or by accessing a replicator canister. Replicators have been added in certain areas across each map. More replicators also drop throughout the match in random places much like neutral care packages. Each replicator position has four interactable terminals. Three of the terminals give you crafting materials (25 per terminal) and one main terminal that allows you to craft. The main terminal has three interactable screens, meaning up to three items can be crafted at once. The main terminal can be used by all three player at once, or one player can use the terminal to craft multiple items at once.")
                        .font(.custom("Teko-Regular", size: 22))
                        .foregroundColor(.black)
                        .padding(.horizontal, 25)
                        .padding(.bottom, 5)
                        .fixedSize(horizontal: false, vertical: true)
                        
                        Text("What players are able to craft changes both daily and weekly. Guns and attachments change daily, while gear changes weekly. If an item is able to be crafted in replicators, it can only be crafter and cannot be found on the map. Meaning if the Devotion and the Turbo Charger can be crafted, you not find either on the map. When crafting ammo, it will produce one box of each type of ammo needed for you guns. In other words if you have a gun using shotgun ammo and another using heavy ammo, it will give you a box of each. Evo shields can also be upgraded at the main terminals. Spending 45 crafting materials will subtract 100 damage needed to obtain the next color level. Note that when upgrading Evo shields, your armor is removed and deposited into the machine. This leaves you vulnerable for the duration of the crafting process.")
                        .font(.custom("Teko-Regular", size: 22))
                        .foregroundColor(.black)
                        .padding(.horizontal, 25)
                        .padding(.bottom, 5)
                        .fixedSize(horizontal: false, vertical: true)
                    }
                    .padding(.vertical)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(20)
                    .padding(.bottom)
                    
                }
                
                VStack {
                    SubHeaderView(text: "Maps")
                    
                    VStack {
                        HStack {
                            Text("King's Canyon")
                                .font(.custom("Teko-Medium", size: 25))
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.leading)
                        .padding(.bottom)
                        
                        HStack {
                            Text("Bunkers")
                                .font(.custom("Teko-Regular", size: 25))
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .padding(.leading)
                        
                        Text("There are four bunkers located around King's Canyon. Each bunker has one main enterance that requires interaction with a screen located at the front of the bunker. There is a seperate smaller exit at the back of each bunker. Bunkers contain a few weapons and gear. Each bunker has one gold item, either a weapon or a piece of gear. The gold item is the same every game for that particular bunker.")
                        .font(.custom("Teko-Regular", size: 22))
                        .foregroundColor(.black)
                        .padding(.horizontal, 25)
                        .padding(.bottom, 5)
                        .fixedSize(horizontal: false, vertical: true)
                    }
                    .padding(.vertical)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(20)
                    .padding(.bottom)
                    
                    VStack {
                        
                        VStack {
                            
                            HStack {
                                Text("World's Edge")
                                    .font(.custom("Teko-Medium", size: 25))
                                    .foregroundColor(.black)
                                Spacer()
                            }
                            .padding(.leading)
                            .padding(.bottom)
                            
                            HStack {
                                Text("Cargo Bots")
                                    .font(.custom("Teko-Regular", size: 25))
                                    .foregroundColor(.black)
                                Spacer()
                            }
                            .padding(.leading)
                            
                            GIFView(gifName: "cargo_bot")
                            .frame(width: 300, height: 200)
                            
                            Text("Cargo Bots fly around World's Edge carrying giant color changing disco balls. These disco balls contain loot and gear. The colors (blue, yellow and purple) represent the rarity of gear the ball will drop when shot down and opened.")
                                .font(.custom("Teko-Regular", size: 22))
                                .foregroundColor(.black)
                                .padding(.horizontal, 25)
                                .padding(.bottom, 5)
                                .fixedSize(horizontal: false, vertical: true)
                            Text("Cargo bots can be shot out of the sky by shooting the ball itself, but the preferred way is to shoot the cargo bot carrying the ball. Shooting the cargo bot itself only requires one shot for the ball to drop. Thus making it easier to get the ball on yellow.")
                                .font(.custom("Teko-Regular", size: 22))
                                .foregroundColor(.black)
                                .padding(.horizontal, 25)
                                .padding(.bottom, 5)
                                .fixedSize(horizontal: false, vertical: true)
                            Text("Some cargo bots also contain vault keys. In fact the only way to obtain a vault key is from cargo bots (or from a death box. You can easily tell if a cargo bot contains a vault key by noticing if there are red flashing lights that appear while the colors change.")
                                .font(.custom("Teko-Regular", size: 22))
                                .foregroundColor(.black)
                                .padding(.horizontal, 25)
                                .padding(.bottom, 5)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        .padding(.vertical)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(20)
                        .padding(.bottom)
                    }
                }
            }
            .navigationBarTitle("Tips", displayMode: .inline)
        }
        .background(Image("season_6_bg").resizable())
        .edgesIgnoringSafeArea(.all)
    }
}

struct TipsDetail_Previews: PreviewProvider {
    static var previews: some View {
        TipsDetail()
    }
}

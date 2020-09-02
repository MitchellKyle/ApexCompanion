//
//  HomeView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/25/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
            
        NavigationView {
            ScrollView {
                VStack {
                    Text("Apex Companion")
                    .font(.custom("Teko-Bold", size: 45))
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 2, x: 2, y: 2)
                    Spacer()
                    
                    HStack {
                        Spacer()
                        NavigationLink(destination: WeaponListView()) {
                            HomeItem(backgroundImage: "weapons_home", title: "Weapons")
                        }
                        
                        Spacer()
                        NavigationLink(destination: CharacterList()) {
                            HomeItem(backgroundImage: "legends_home", title: "Legends")
                        }
                        Spacer()
                    }
                    .padding(.top)
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        NavigationLink (destination: GearRow()) {
                            HomeItem(backgroundImage: "gear_home", title: "Gear")
                        }
                        Spacer()
                        NavigationLink(destination: MapList()) {
                            HomeItem(backgroundImage: "maps_home", title: "Maps")
                        }
                        
                        Spacer()
                    }
                    .padding(.top)
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        NavigationLink(destination: TipsDetail()) {
                            HomeItem(backgroundImage: "tips_home", title: "Tips")
                        }
                        
                        Spacer()
                        NavigationLink(destination: NewsList(news: newsData)) {
                            ZStack {
                                Image("apex_news_bg")
                                    .renderingMode(.original)
                                    .resizable()
                                    .cornerRadius(20)
                                    .frame(width: 170, height: 220)
                                VStack {
                                Text("Apex")
                                    .font(.custom("Teko-SemiBold", size: 30))
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 2, x: 2, y: 2)
                                    Text("News")
                                        .font(.custom("Teko-SemiBold", size: 30))
                                        .foregroundColor(.white)
                                        .shadow(color: .black, radius: 2, x: 2, y: 2)
                                }
                            }
                        }
                        
                        Spacer()
                        
                    }
                    .padding(.top)
                    
                    Spacer()
                    
                }
                .padding(.top, 50)
                .padding(.bottom)
            }
            .background(Color.black.opacity(0.5))
            .background(Image("season_6_bg").resizable().aspectRatio(contentMode: .fill))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

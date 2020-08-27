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
                            ZStack {
                                Image("weapons_home")
                                    .renderingMode(.original)
                                    .resizable()
                                    .cornerRadius(20)
                                    .frame(width: 170, height: 220)
                                Text("Weapons")
                                    .font(.custom("Teko-SemiBold", size: 30))
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 2, x: 2, y: 2)
                                    .offset(y: 65)
                            }
                        }
                        
                        Spacer()
                        NavigationLink(destination: CharacterList()) {
                            ZStack {
                                Image("legends_home")
                                    .renderingMode(.original)
                                    .resizable()
                                    .cornerRadius(20)
                                    .frame(width: 170, height: 220)
                                Text("Legends")
                                    .font(.custom("Teko-SemiBold", size: 30))
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 2, x: 2, y: 2)
                                    .offset(y: 65)
                            }
                        }
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink (destination: GearRow()) {
                            ZStack {
                                Image("gear_home")
                                    .renderingMode(.original)
                                    .resizable()
                                    .cornerRadius(20)
                                    .frame(width: 170, height: 220)
                                Text("Gear")
                                    .font(.custom("Teko-SemiBold", size: 30))
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 2, x: 2, y: 2)
                                    .offset(y: 65)
                            }
                        }
                        Spacer()
                        NavigationLink(destination: MapList()) {
                            ZStack {
                                Image("maps_home")
                                    .renderingMode(.original)
                                    .resizable()
                                    .cornerRadius(20)
                                    .frame(width: 170, height: 220)
                                Text("Maps")
                                    .font(.custom("Teko-SemiBold", size: 30))
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 2, x: 2, y: 2)
                                    .offset(y: 65)
                            }
                        }
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        Text("Tricks")
                        Spacer()
                        NavigationLink(destination: NewsList(news: newsData)) {
                            ZStack {
                                Image("news_home")
                                    .renderingMode(.original)
                                    .resizable()
                                    .cornerRadius(20)
                                    .frame(width: 170, height: 220)
                                Text("News")
                                    .font(.custom("Teko-SemiBold", size: 30))
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 2, x: 2, y: 2)
                                    .offset(y: 65)
                            }
                        }
                        Spacer()
                    }
                    Spacer()
                }
            }
            .background(Color.black.opacity(0.7))
//            .resizable()
            .edgesIgnoringSafeArea(.all)
//            .aspectRatio(contentMode: .fill))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

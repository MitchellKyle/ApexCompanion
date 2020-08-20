//
//  HomeView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/25/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
//    init() {
//        UINavigationBar.appearance().standardAppearance.shadowColor = .clear
//        UINavigationBar.appearance().backgroundColor = .clear
//        UINavigationBar.appearance().isHidden = false
//        UINavigationBar.appearance().barTintColor = .white
//        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
//    }
    
    var body: some View {
            
        NavigationView {
            ScrollView {
                VStack {
                    Text("Apex Companion")
                    .font(.custom("Teko-Bold", size: 45))
                    .foregroundColor(.black)
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
                        NavigationLink(destination: MapView(mapImageName: "kings_canyon")) {
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
                        Text("News")
                        Spacer()
                    }
                    Spacer()
                }
            }
            .background(Image("season_6_bg")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .aspectRatio(contentMode: .fill))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

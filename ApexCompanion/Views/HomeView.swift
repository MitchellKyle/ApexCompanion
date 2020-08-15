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
            VStack {
                Text("Apex Companion")
                .font(.custom("Teko-Bold", size: 45))
                .foregroundColor(.black)
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: WeaponListView()) {
                    Text("Weapons")
                    }
                    Spacer()
                    NavigationLink(destination: CharacterList()) {
                    Text("Legends")
                    }
                    Spacer()
                }
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink (destination: GearRow()) {
                        Text("Gear")
                    }
                    Spacer()
                    NavigationLink(destination: MapView()) {
                        Text("Maps")
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
            }.background(Image("season_6_bg").resizable().edgesIgnoringSafeArea(.all).aspectRatio(contentMode: .fill))
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

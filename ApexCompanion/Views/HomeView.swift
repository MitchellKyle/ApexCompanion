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
                    Text("Legends")
                    Spacer()
                }
                Spacer()
                HStack {
                    Spacer()
                    Text("Maps")
                    Spacer()
                    Text("News")
                    Spacer()
                }
                Spacer()
                HStack {
                    Text("Tricks")
                }
                Spacer()
            }.background(Image("bg").resizable().edgesIgnoringSafeArea(.all).aspectRatio(contentMode: .fill))
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

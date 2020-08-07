//
//  ClipsView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/4/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct ClipsView: View {
    
    var description: String
    var icon: String
    var levelOne: String
    var levelTwo: String
    var levelThree: String
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text(description)
                        .font(.custom("Teko-SemiBold", size: 20))
                        .foregroundColor(.black)
                }
                HStack {
                    // Level One
                    VStack {
                        Image(icon)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.all, 5)
                            .background(Color(red: 61/255, green: 65/255, blue: 66/255))
                            .cornerRadius(10)
                        Text("Level One")
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                        Text(levelOne)
                            .font(.custom("Teko-SemiBold", size: 25))
                            .foregroundColor(.black)
                    }.frame(width: 95)
                    
                    // Level Two
                    VStack {
                        Image(icon)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.all, 5)
                            .background(Color(red: 0/255, green: 75/255, blue: 137/255))
                            .cornerRadius(10)
                        Text("Level Two")
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                        Text(levelTwo)
                            .font(.custom("Teko-SemiBold", size: 25))
                            .foregroundColor(.black)
                    }.frame(width: 95)
                    
                    // Level Three
                    VStack {
                        Image(icon)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.all, 5)
                            .background(Color(red: 69/255, green: 26/255, blue: 97/255))
                            .cornerRadius(10)
                        Text("Level Three")
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                        Text(levelThree)
                            .font(.custom("Teko-SemiBold", size: 25))
                            .foregroundColor(.black)
                    }.frame(width: 95)
                }
            }
        }.frame(height: 400)
            .padding(.horizontal, 8)
    }
}

struct ClipsView_Previews: PreviewProvider {
    static var previews: some View {
        ClipsView(description: weaponData[0].attachments!.clips!.description, icon: weaponData[0].attachments!.clips!.clipIconWhite, levelOne: weaponData[0].attachments!.clips!.levelOne, levelTwo: weaponData[0].attachments!.clips!.levelTwo, levelThree: weaponData[0].attachments!.clips!.levelThree)
    }
}

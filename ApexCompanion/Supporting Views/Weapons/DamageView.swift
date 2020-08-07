//
//  DamageView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/6/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct DamageView: View {
    
    var weapon: Weapon
    
    var body: some View {
        VStack {
            
            SubHeaderView(text: "Damage")
            
            VStack {
                HStack {
                    Spacer()
                    VStack {
                        Text(weapon.damage.head.standard)
                            .font(.custom("Teko-SemiBold", size: 25))
                            .foregroundColor(.black)
                        Text("Head")
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                    }
                    Spacer()
                    VStack {
                        Text(weapon.damage.body)
                            .font(.custom("Teko-SemiBold", size: 25))
                            .foregroundColor(.black)
                        Text("Body")
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                    }
                    Spacer()
                    VStack {
                        Text(weapon.damage.lowerBody)
                            .font(.custom("Teko-SemiBold", size: 25))
                            .foregroundColor(.black)
                        Text("Legs")
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                    }
                    Spacer()
                }
                Text ("Head damage will vary depending on the target's helmet level.")
                    .font(.custom("Teko-SemiBold", size: 20))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                    .padding(.vertical)
                    
                HStack {
                    Spacer()
                    VStack {
                        Text(weapon.damage.head.levelOne)
                            .font(.custom("Teko-SemiBold", size: 25))
                            .foregroundColor(.black)
                        Image("helmet_icon")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.all, 5)
                            .background(Color(red: 61/255, green: 65/255, blue: 66/255))
                            .cornerRadius(10)
                        Text("Level One")
                        .font(.custom("Teko-SemiBold", size: 20))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(height: 60)
                    }.frame(width: 95)
                    Spacer()
                    VStack {
                        Text(weapon.damage.head.levelTwo)
                            .font(.custom("Teko-SemiBold", size: 25))
                            .foregroundColor(.black)
                        Image("helmet_icon")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.all, 5)
                            .background(Color(red: 0/255, green: 75/255, blue: 137/255))
                            .cornerRadius(10)
                        Text("Level Two")
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .frame(height: 60)
                    }.frame(width: 95)
                    Spacer()
                    VStack {
                        Text(weapon.damage.head.levelThree)
                            .font(.custom("Teko-SemiBold", size: 25))
                            .foregroundColor(.black)
                        Image("helmet_icon")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.all, 5)
                            .background(Color(red: 69/255, green: 26/255, blue: 97/255))
                            .cornerRadius(10)
                        Text("Level Three/Four")
                            .font(.custom("Teko-SemiBold", size: 20))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .frame(height: 60)
                    }.frame(width: 95)
                    Spacer()
                }
            }.padding(.top)
            .background(Color.white.opacity(0.9))
            .cornerRadius(20)
        }
    }
}

struct DamageView_Previews: PreviewProvider {
    static var previews: some View {
        DamageView(weapon: weaponData[0])
    }
}

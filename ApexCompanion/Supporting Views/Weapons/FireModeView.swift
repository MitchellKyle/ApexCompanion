//
//  FireModeView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/5/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct GIFView: UIViewRepresentable {
    var gifName: String

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<GIFView>) {

    }


    func makeUIView(context: Context) -> UIView {
        return GifPlayerView(gifName: gifName)
    }
}

struct FireModeView: View {
    
    @State private var primary = true
    @State private var secondary = false
    
    var weapon: Weapon
    
    var body: some View {
        VStack {
            HStack {
                Text("Fire Mode")
                    .font(.custom("Teko-SemiBold", size: 30))
                    .foregroundColor(.black)
                Spacer()
            }.padding(.leading)
                .padding(.bottom)
            VStack {
                HStack {
                    Text("Recoil ->")
                        .font(.custom("Teko-SemiBold", size: 25))
                        .foregroundColor(.black)
                    Text(weapon.fireMode.recoil)
                        .font(.custom("Teko-SemiBold", size: 25))
                        .foregroundColor(.black)
                }.padding(.top, 10)
                HStack {
                    Spacer()
                    Button(action: {
                        
                        self.primary = true
                        self.secondary = false
                        
                    }) {
                        Text("Default Mode")
                            .multilineTextAlignment(.center)
                            .frame(width: 100)
                            .padding(.all, 5)
                            .font(.custom("Teko-SemiBold", size: 25))
                            .foregroundColor(primary ? .white : .black)
                            .background(primary ? Color.black : Color.white.opacity(0.9))
                            .cornerRadius(10)
                    }
                    
                    if weapon.fireMode.modeTwo != nil {
                        Button(action: {
                            
                            self.primary = false
                            self.secondary = true
                            
                        }) {
                            Text("Secondary Mode")
                                .multilineTextAlignment(.center)
                                .frame(width: 100)
                                .padding(.all, 5)
                                .font(.custom("Teko-SemiBold", size: 25))
                                .foregroundColor(secondary ? .white : .black)
                                .background(secondary ? Color.black : Color.white.opacity(0.9))
                                .cornerRadius(10)
                        }
                    }
                    Spacer()
                }.padding(.top, 10)
                VStack {
                    if primary {
                        HStack {
                            Text(weapon.fireMode.modeOne)
                                .font(.custom("Teko-SemiBold", size: 25))
                                .foregroundColor(.black)
                            Image(weapon.fireMode.modeOneIcon)
                                .resizable()
                                .frame(width: 50, height: 20)
                        }
                        GIFView(gifName: weapon.fireMode.modeOneGif)
                            .frame(width: 300, height: 200)
                    }
                    if secondary {
                        HStack {
                            Text(weapon.fireMode.modeTwo!)
                                .font(.custom("Teko-SemiBold", size: 25))
                                .foregroundColor(.black)
                            Image(weapon.fireMode.modeTwoIcon!)
                                .resizable()
                                .frame(width: 50, height: 20)
                        }
                        GIFView(gifName: weapon.fireMode.modeTwoGif!)
                            .frame(width: 300, height: 200)
                    }
                }
            }.padding(.bottom)
            .background(Color.white.opacity(0.9))
            .cornerRadius(20)
        } // End of main VStack
    }
}

struct FireModeView_Previews: PreviewProvider {
    static var previews: some View {
        FireModeView(weapon: weaponData[0])
    }
}

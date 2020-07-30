//
//  WDRecoilView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/27/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct WDRecoilView: View {
    
    var recoilText: String
    
    var body: some View {
        VStack {
            Text("Recoil")
                .font(.custom("Teko-Light", size: 25))
                .padding(.horizontal)
                .foregroundColor(.white)
                .background(Color.black)
                .cornerRadius(10)
            Spacer()
            Text(recoilText)
                .font(.custom("Teko-Light", size: 25))
            Spacer()
        }
        .frame(width: 130, height: 110, alignment: .center)
        .padding()
        .background(Color.white.opacity(0.9))
        .cornerRadius(20)
    }
}

struct WDRecoilView_Previews: PreviewProvider {
    static var previews: some View {
        WDRecoilView(recoilText: weaponData[0].recoil)
    }
}

//
//  TipItem.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 9/1/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct TipItem: View {
    
    var title: String
    var description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.custom("Teko-Regular", size: 25))
                    .foregroundColor(.black)
                Spacer()
            }
            .padding(.leading)
            
            Text(description)
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

struct TipItem_Previews: PreviewProvider {
    static var previews: some View {
        TipItem(title: "Launching", description: "When launching into a map, the jump master is in control of when the launch takes place. The team glides together under the jump master's control. Breaking away from the team will allow you to glide faster and potential get the jump on enemy teams. Just be aware as this can also put you further from where your team landed and can leave you in an outnumbered fight.")
    }
}

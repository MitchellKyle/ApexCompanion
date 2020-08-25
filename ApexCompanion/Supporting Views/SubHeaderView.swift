//
//  SubHeaderView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/7/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct SubHeaderView: View {
    
    var text: String
    
    var body: some View {
        HStack {
            Text(text)
                .font(.custom("Teko-SemiBold", size: 30))
                .foregroundColor(.white)
                .shadow(color: .black, radius: 1, x: 1, y: 1)
                .shadow(color: .black, radius: 1, x: -1, y: -1)
            Spacer()
        }
        .padding(.leading)
        .padding(.bottom)
    }
}

struct SubHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SubHeaderView(text: "Sub Header")
    }
}

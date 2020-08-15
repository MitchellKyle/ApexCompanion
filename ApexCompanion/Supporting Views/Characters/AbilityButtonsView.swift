//
//  AbilityButtonsView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/7/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct AbilityButtonsView: View {
    
    var name: String
    var condition: Bool
    
    var body: some View {
        Text(name)
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .font(.custom("Teko-SemiBold", size: 25))
        .foregroundColor(condition ? .white : .black)
        .background(condition ? Color.black : Color.white)
        .cornerRadius(10)
    }
}

struct AbilityButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        AbilityButtonsView(name: "Perk", condition: true)
    }
}

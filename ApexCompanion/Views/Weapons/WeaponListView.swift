//
//  WeaponListView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/25/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct WeaponListView: View {
    
    var weaponCategories: [String: [Weapon]] {
        .init(
            grouping: weaponData,
            by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
            
        List(weaponCategories.keys.sorted(), id: \String.self) {key in
            
            WeaponRow(weaponType: "\(key)", weapons: self.weaponCategories[key]!)
                
            }
            .padding(.top, 1)
            .navigationBarHidden(false)
            .navigationBarTitle("Weapon Types", displayMode: .inline)
            
    }
}

struct WeaponListView_Previews: PreviewProvider {
    static var previews: some View {
        WeaponListView()
    }
}

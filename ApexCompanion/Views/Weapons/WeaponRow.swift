//
//  WeaponRow.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/27/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct WeaponRow: View {
    
    var weaponType: String
    
    var weapons: [Weapon]
    
    var body: some View {
            
        VStack{
            
            HStack {
                Text(weaponType)
                    .font(.custom("Teko-Bold", size: 40))
                    .padding(.leading, 5)
                Spacer()
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                    
                HStack(alignment: .top) {
                    ForEach (self.weapons, id: \.name) { weapon in
                        NavigationLink(destination: WeaponDetail(weapon: weapon)) {
                        
                        WeaponItem(weapon: weapon)
                        }
                    }
                }
            }
        }
    }
}

struct WeaponRow_Previews: PreviewProvider {
    static var previews: some View {
        WeaponRow(weaponType: "Assualt Rifles", weapons: weaponData)
    }
}

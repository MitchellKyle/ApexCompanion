//
//  GearDetail.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/13/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct GearDetail: View {
    
    var gear: Gear
    
    var body: some View {
        ZStack {

            Image("season_6_bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                
                HelmetView(gear: gear)
                
            }.padding(.bottom, 10)
        }
    }
}

struct GearDetail_Previews: PreviewProvider {
    static var previews: some View {
        GearDetail(gear: gearData[2])
    }
}

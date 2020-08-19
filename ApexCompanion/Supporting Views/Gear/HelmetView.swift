//
//  HelmetView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/15/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct HelmetView: View {
    
    var gear: Gear
    
    var body: some View {
        VStack {
            HeaderView(title: gear.name)
            
            VStack {
                Text(gear.description)
                    .font(.custom("Teko-Medium", size: 22))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                
                // Level Zero
                if gear.levelZero != nil {
                    SingleGearView(gear: gear, levelName: gear.levelZero!.name, levelColor: UIColor(red: 0, green: 0, blue: 0, alpha: 1.0), levelDescription: gear.levelZero!.description)
                }
                
                // Level One
                SingleGearView(gear: gear, levelName: gear.levelOne.name, levelColor: Constants.Colors.levelOne, levelDescription: gear.levelOne.description)
                
                // Level Two
                SingleGearView(gear: gear, levelName: gear.levelTwo.name, levelColor: Constants.Colors.levelTwo, levelDescription: gear.levelTwo.description)
                
                // Level Three
                SingleGearView(gear: gear, levelName: gear.levelThree.name, levelColor: Constants.Colors.levelThree, levelDescription: gear.levelThree.description)
                
                // Level Four
                SingleGearView(gear: gear, levelName: gear.levelFour.name, levelColor: Constants.Colors.levelFour, levelDescription: gear.levelFour.description)
                
                // Level Five
                if gear.levelFive != nil {
                    SingleGearView(gear: gear, levelName: gear.levelFive!.name, levelColor: Constants.Colors.levelFive, levelDescription: gear.levelFive!.description)
                }
                
            }
            .padding(.vertical)
            .background(Color.white.opacity(0.9))
            .cornerRadius(20)
        }
    }
}

struct HelmetView_Previews: PreviewProvider {
    static var previews: some View {
        HelmetView(gear: gearData[0])
    }
}

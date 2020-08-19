//
//  SingleGearView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/15/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct SingleGearView: View {
    
    var gear: Gear
    var levelName: String
    var levelColor: UIColor
    var levelDescription: String
    
    var body: some View {
        VStack {
            HStack {
                Text(levelName)
                    .font(.custom("Teko-SemiBold", size: 25))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.leading)
                    .padding(.bottom, -20)
                Spacer()
            }
            HStack {
                Spacer()
                Image(gear.imageWhite)
                    .resizable()
                    .frame(width: 50, height: 60)
                    .padding(.all, 5)
                    .background(Color(levelColor))
                    .cornerRadius(10)
                Spacer()
                Text(levelDescription)
                    .font(.custom("Teko-Regular", size: 22))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .padding(.vertical)
                    .frame(width: 280)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer()
            }
        }
    }
}

struct SingleGearView_Previews: PreviewProvider {
    static var previews: some View {
        SingleGearView(gear: gearData[0], levelName: gearData[3].levelOne.name, levelColor: Constants.Colors.levelOne, levelDescription: gearData[2].levelThree.description)
    }
}

//
//  CharacterItem.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/2/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct CharacterItem: View {
    
    var character: Character
    
    var body: some View {
        
        ZStack {
            HStack {
                Image(character.image)
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 170, height: 200)
                    .padding(.vertical)
                Spacer()
            }
            HStack {
                Spacer()
                Text(character.name)
                    .font(.custom("Teko-Bold", size: 45))
                    .padding()
                    .foregroundColor(.black)
            }
        }.frame(width: 350, height: 250)
        .background(Color.init(red: 228/255, green: 225/255, blue: 216/255))
        .cornerRadius(20)
    }
}

struct CharacterItem_Previews: PreviewProvider {
    static var previews: some View {
        CharacterItem(character: characterData[10])
    }
}

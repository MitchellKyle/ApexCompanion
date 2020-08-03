//
//  CharacterRow.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/2/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct CharacterRow: View {
    
    var characterType: String
    
    var characters: [Character]
    
    var body: some View {
        
        VStack{
            
            HStack {
                Text(characterType)
                    .font(.custom("Teko-Bold", size: 40))
                    .foregroundColor(.black)
                    .padding(.leading, 5)
                Spacer()
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                    
                HStack(alignment: .top) {
                    ForEach (self.characters, id: \.name) { character in
                        NavigationLink(destination: CharacterDetail(character: character)) {
                        
                        CharacterItem(character: character)
                            .padding(.horizontal, 5)
                        }
                    }
                }
            }
        }
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(characterType: "Offensive", characters: characterData)
    }
}

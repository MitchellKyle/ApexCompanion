//
//  CharacterList.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/2/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct CharacterList: View {
    
    var characterCategories: [String: [Character]] {
        .init(
            grouping: characterData,
            by: {$0.charCategory.rawValue}
        )
    }
    
    var body: some View {
        List(characterCategories.keys.sorted(), id: \String.self) {key in
            
            CharacterRow(characterType: "\(key)", characters: self.characterCategories[key]!).edgesIgnoringSafeArea(.horizontal)
            }
            .edgesIgnoringSafeArea(.horizontal)
            .navigationBarTitle("Characters", displayMode: .inline)
            
    }
}

struct CharacterList_Previews: PreviewProvider {
    static var previews: some View {
        CharacterList()
    }
}

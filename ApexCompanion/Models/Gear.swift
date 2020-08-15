//
//  Gear.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/14/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import Foundation

class Gear: Codable, Identifiable {
    
    var id: Int
    var name: String
    var category: String
    var image: String
    var imageWhite: String
    var description: String
    var levelOne: LevelOne
    var levelTwo: LevelTwo
    var levelThree: LevelThree
    var levelFour: LevelFour
    
}

struct LevelOne: Codable, Hashable {
    
    var name: String
    var description: String
    
}

struct LevelTwo: Codable, Hashable {
    
    var name: String
    var description: String
    
}

struct LevelThree: Codable, Hashable {
    
    var name: String
    var description: String
    
}

struct LevelFour: Codable, Hashable {
    
    var name: String
    var description: String
    var info: String
    
}

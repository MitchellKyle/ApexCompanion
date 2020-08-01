//
//  Character.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/1/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import Foundation
import SwiftUI

struct Character: Codable, Hashable, Identifiable {
    
    var id: Int
    var name: String
    var subHeader: String
    var description: String
    var image: String
    var type: String
    var typeImage: String
    var charCategory: CharCategory
    var isFree: Bool
    var tacticalAbility: TacticalAbility
    var passiveAbility: PassiveAbility
    var ultimateAbility: UltimateAbility
    var passivePerk: PassivePerk?
    
}

enum CharCategory: String, CaseIterable, Codable, Hashable {
    
    case offensive = "Offensive"
    case defensive = "Defensive"
    case support = "Support"
    case recon = "Recon"
    
}

struct TacticalAbility: Codable, Hashable {
    
    var name: String
    var tacticalImage: String
    var cd: String
    var tacticalDescription: String
    var info: String
    var tips: String
    
}

struct PassiveAbility: Codable, Hashable {
    
    var name: String
    var passiveImage: String
    var passiveDescription: String
    var info: String
    var tips: String
    
}

struct UltimateAbility: Codable, Hashable {
    
    var name: String
    var ultimateImage: String
    var cd: String
    var ultimateDescription: String
    var info: String
    var tips: String
    
}

struct PassivePerk: Codable, Hashable {
    
    var name: String
    var image: String
    var description: String
    var info: String
    
}

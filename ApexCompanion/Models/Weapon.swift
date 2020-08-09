//
//  Weapon.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/25/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import Foundation
import SwiftUI

struct Weapon: Codable, Identifiable, Hashable {
    
    var id: Int
    var name: String
    var image: String
    var imageIcon: String
    var type: String
    var category: Category
    var weaponTypeIcon: String
    var ammoType: String
    var ammoTypeIcon: String
    var standardClipSize: String
    var clipIcon: String
    var fireMode: FireMode
    var attachments: Attachments?
    var damage: Damage
    var description: String
    
}

enum Category: String, CaseIterable, Codable, Hashable {
    
    case assaultRifle = "Assault Rifles"
    case subMachineGun = "Sub Machine Guns"
    case lightMachineGun = "Light Machine Guns"
    case sniperRifles = "Sniper Rifles"
    case shotguns = "Shotguns"
    case pistols = "Pistols"
    
}

struct FireMode: Codable, Hashable {
    
    var recoil: String
    var modeOne: String
    var modeOneIcon: String
    var modeOneGif: String
    var modeTwo: String?
    var modeTwoIcon: String?
    var modeTwoGif: String?
    
}

struct Attachments: Codable, Hashable {
    
    var optics: Optics?
    var clips: Clips?
    var stocks: Stocks?
    var stabilizer: Stabilizer?
    var hop: Hop?
    var bolt: Bolt?
    
}

struct Optics: Codable, Hashable {
    
    var opticIcon: String
    var description: String
    var standardHolo: StandardHolo
    var standardHcog: StandardHcog
    var rareHolo: RareHolo
    var rareHcog: RareHcog
    var epicHolo: EpicHolo?
    var epicHcog: EpicHcog?
    var rareSniper: RareSniper?
    var epicSniper: EpicSniper?
    var legendarySniper: LegendarySniper?
    var digitalThreat: DigitalThreat?
    
}

struct Clips: Codable, Hashable {
    
    var description: String
    var clipIconWhite: String
    var levelOne: String
    var levelTwo: String
    var levelThree: String
    
}

struct Stocks: Codable, Hashable {
    
    var stockIcon: String
    var description: String
    var stockIconWhite: String
    var commonName: String
    var commonDescription: String
    var rareName: String
    var rareDescription: String
    var epicName: String
    var epicDescription: String
    
}

struct Stabilizer: Codable, Hashable {
    
    var stabilizerIcon: String
    var description: String
    var stabilizerIconWhite: String
    var commonName: String
    var commonDescription: String
    var rareName: String
    var rareDescription: String
    var epicName: String
    var epicDescription: String
    var legendaryName: String
    var legendaryDescription: String
    
}

struct Hop: Codable, Hashable {
    
    var name: String
    var icon: String
    var description: String
    
}

struct Bolt: Codable, Hashable  {
    var icon: String
    var iconWhite: String
    var description: String
    var commonName: String
    var commonDescription: String
    var rareName: String
    var rareDescription: String
    var epicName: String
    var epicDescription: String
}

struct Damage: Codable, Hashable {
    
    var head: Head
    var body: String
    var lowerBody: String
    
}

struct Head: Codable, Hashable {
    
    var standard: String
    var levelOne: String
    var levelTwo: String
    var levelThree: String
    
}

struct StandardHolo: Codable, Hashable {
    
    var name: String
    var image: String
    
}

struct StandardHcog: Codable, Hashable {
    
    var name: String
    var image: String
    
}

struct RareHolo: Codable, Hashable {
    
    var name: String
    var image: String
    
}

struct RareHcog: Codable, Hashable {
    
    var name: String
    var image: String
    
}

struct EpicHolo: Codable, Hashable {
    
    var name: String
    var image: String
    
}

struct EpicHcog: Codable, Hashable {
    
    var name: String
    var image: String
    
}

struct RareSniper: Codable, Hashable {
    
    var name: String
    var image: String
    
}

struct EpicSniper: Codable, Hashable {
    
    var name: String
    var image: String
    
}

struct LegendarySniper: Codable, Hashable {
    
    var name: String
    var image: String
    
}

struct DigitalThreat: Codable, Hashable {
    
    var name: String
    var image: String
    
}

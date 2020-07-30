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
    var fireMode: FireMode
    var recoil: String
    var clipSize: ClipSize
    var clipIcon: String
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
    
    var modeOne: String
    var modeTwo: String?
    
}

struct ClipSize: Codable, Hashable {
    
    var standard: String
    var levelOne: String?
    var levelTwo: String?
    var levelThree: String?
    
}

struct Damage: Codable, Hashable {
    
    var head: String
    var body: String
    var lowerBody: String
    
}

//
//  Constants.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/25/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import Foundation

struct Constants {
    
    struct WeaponTypes {
        static var types = ["Assault Rifles", "Sub Machine Guns", "Light Machine Guns", "Sniper Rifles", "Shotguns", "Pistols"]
    }
    
    struct Data {
        static var jsonFile = "weapons.json"
    }
    
}

struct Colors {
    struct LevelOne {
        static var red = Double(61/255)
        static var green = Double(65/255)
        static var blue = Double(66/255)
    }
    
    struct LevelTwo {
        static var red = Double(0/255)
        static var green = Double(75/255)
        static var blue = Double(137/255)
    }
    
    struct LevelThree {
        static var red = Double(69/255)
        static var green = Double(26/255)
        static var blue = Double(97/255)
    }
}


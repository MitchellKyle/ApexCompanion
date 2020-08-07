//
//  Constants.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/25/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    
    struct WeaponTypes {
        static var types = ["Assault Rifles", "Sub Machine Guns", "Light Machine Guns", "Sniper Rifles", "Shotguns", "Pistols"]
    }
    
    struct Data {
        static var jsonFile = "weapons.json"
    }
    
    struct Colors {
        static var levelOne = UIColor(red: 61/255, green: 65/255, blue: 66/255, alpha: 1.0)
        static var levelTwo = UIColor(red: 0/255, green: 75/255, blue: 137/255, alpha: 1.0)
        static var levelThree = UIColor(red: 69/255, green: 26/255, blue: 97/255, alpha: 1.0)
        static var levelFour = UIColor(red: 206/255, green: 173/255, blue: 33/255, alpha: 1.0)
    }
    
}



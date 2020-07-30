//
//  WeaponModel.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/25/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import Foundation

class WeaponModel {
    
    func getWeapons(weaponType: String, completion: @escaping ([Weapon]) -> Void) {
        
        let file = Bundle.main.url(forResource: Constants.Data.jsonFile, withExtension: nil)
        
        guard file != nil else {
            fatalError("Couldn't find \(Constants.Data.jsonFile) in main bundle.")
        }
        
        do {
            
            var weapons = [Weapon]()
            
            let data = try Data(contentsOf: file!)
            
            let decoder = JSONDecoder()
            
            let allWeapons = try decoder.decode([Weapon].self, from: data)
            
            for weapon in allWeapons {
                
                if weapon.type == weaponType {
                    
                    weapons.append(weapon)
                    
                }
                
            }
            
            completion(weapons)
            
        }
        catch {
            fatalError("Error getting data from the JSON file.")
        }
        
        
    }
    
}

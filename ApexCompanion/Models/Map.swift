//
//  Map.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/19/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import Foundation

class Map: Codable, Identifiable {
    
    var id: Int
    var name: String
    var image: String
    var balloonLocations: String
    var respawnLocations: String
    var beaconLocations: String
    var lootTier: String
    var replicatorLocations: String
    var mapSpecificLocations: String
    var description: String
    var eventLocations: EventLocations
    
}

struct EventLocations: Codable {
    
    var areaName: String
    var eventDescription: String
    
}

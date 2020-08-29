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
    var imageLabeled: String
    var balloonLocations: String
    var respawnLocations: String
    var respawnLocationsLabeled: String
    var beaconLocations: String
    var beaconLocationsLabeled: String
    var lootTier: String
    var lootTierLabeled: String
    var replicatorLocations: String
    var relicatorLocationsLabeled: String
    var mapSpecificLocations: String
    var mapSpecificLocationsLabeled: String
    var features: Features
    var mapFeatures: MapFeatures
    var eventLocations: EventLocations
    
}

struct EventLocations: Codable {
    
    var areaName: String
    var eventDescription: String
    var image: String
    var imageLabeled: String
    
}

struct Features: Codable {
    
    var hotZone: String
    var jumpTower: String
    var respawnBeacons: String
    var surveyBeacons: String
    
}

struct MapFeatures: Codable {
    
    var featureOne: String
    var featureTwo: String
    var featureThree: String
    var featureFour: String
    
}

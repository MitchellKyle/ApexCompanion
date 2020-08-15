//
//  Data.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/27/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import Foundation


import UIKit
import SwiftUI

let weaponData: [Weapon] = load("weapons.json")
let characterData: [Character] = load("characters.json")
let gearData: [Gear] = load("gear.json")
let regenData: [Regen] = load("regen.json")

//let weaponsOfType: [Weapon]

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

func getWeaponTypes(weapons: [Weapon], weaponType: String) -> [Weapon] {
    
    var weaponsOfType = [Weapon]()
    
    for weapon in weapons {
        
        if weapon.type == weaponType.dropLast() {
            weaponsOfType.append(weapon)
        }
    }
    
    return weaponsOfType
    
}

//final class ImageStore {
//    typealias _ImageDictionary = [String: CGImage]
//    fileprivate var images: _ImageDictionary = [:]
//
//    fileprivate static var scale = 2
//
//    static var shared = ImageStore()
//
//    func image(name: String) -> Image {
//        let index = _guaranteeImage(name: name)
//
//        return Image(images.values[index], scale: CGFloat(ImageStore.scale), label: Text(name))
//    }
//
//    static func loadImage(name: String) -> CGImage {
//        guard
//            let url = Bundle.main.url(forResource: name, withExtension: "jpg"),
//            let imageSource = CGImageSourceCreateWithURL(url as NSURL, nil),
//            let image = CGImageSourceCreateImageAtIndex(imageSource, 0, nil)
//        else {
//            fatalError("Couldn't load image \(name).jpg from main bundle.")
//        }
//        return image
//    }
//
//    fileprivate func _guaranteeImage(name: String) -> _ImageDictionary.Index {
//        if let index = images.index(forKey: name) { return index }
//
//        images[name] = ImageStore.loadImage(name: name)
//        return images.index(forKey: name)!
//    }
//}
//

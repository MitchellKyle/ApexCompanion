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
    
    struct URLs {
        static var newsURL = "https://www.ea.com/games/apex-legends/news#game-updates"
    }
    
    struct Colors {
        static var navBar = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.2)
        static var levelOne = UIColor(red: 61/255, green: 65/255, blue: 66/255, alpha: 1.0)
        static var levelTwo = UIColor(red: 0/255, green: 75/255, blue: 137/255, alpha: 1.0)
        static var levelThree = UIColor(red: 69/255, green: 26/255, blue: 97/255, alpha: 1.0)
        static var levelFour = UIColor(red: 206/255, green: 173/255, blue: 33/255, alpha: 1.0)
        static var levelFive = UIColor(red: 255/255, green: 78/255, blue: 29/255, alpha: 1.0)
    }
    
    struct API {
        
        static var API_KEY = "EiwtCWdhW2ImpnRbImoj"
        static var NEWS_URL = "https://api.mozambiquehe.re/news?lang=en-us&auth=\(Constants.API.API_KEY)"
        
    }
    
}



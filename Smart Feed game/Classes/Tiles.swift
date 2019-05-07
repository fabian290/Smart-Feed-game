//
//  Tiles.swift
//  Smart Feed gameTests
//
//  Created by Fabian Hernandez Aguilar on 4/11/19.
//  Copyright © 2019 Fabian Hernandez Aguilar. All rights reserved.
//

import Foundation
import SpriteKit


class Tiles {
    

    
    var sprite = SKSpriteNode(imageNamed: "Tiles")
    
    init() {
        sprite.size = CGSize(width: 250, height: 250)
        sprite.position = CGPoint(x: -250, y: -250)
    }
}

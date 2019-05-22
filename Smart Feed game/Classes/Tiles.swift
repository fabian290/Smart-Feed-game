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
    

    var count = 0
    var sprite = SKSpriteNode(imageNamed: "Tiles")
    var label = SKLabelNode(text: "0")

    var hasMoved = false
    func setCount(newCount: Int) {
        print("setting count: " + String(newCount))
        count = newCount
        label.text = String(newCount)
        

        
    }
    
    init() {
        sprite.size = CGSize(width: 250, height: 250)
        sprite.position = CGPoint(x: -250, y: -250)
        sprite.addChild(label)
        label.fontColor = UIColor.black
        label.zPosition = 50
        label.color = UIColor.black
        self.setCount(newCount: 0)
        label.fontSize = CGFloat(integerLiteral: 17)
    }
}


//
//  Grid.swift
//  Smart Feed game
//
//  Created by Fabian Hernandez Aguilar on 4/25/19.
//  Copyright © 2019 Fabian Hernandez Aguilar. All rights reserved.
//

import Foundation
import SpriteKit

class Grid {
   
    
    let gridSize = 4

    var xSpeed = 5
    var speed = 5,  ySpeed = 1
    
    var sprite = SKSpriteNode(imageNamed: "Tiles");
    var newTile = Tiles()
    
    //Double array, which shows the grids
    var arrray = [[Tiles?]](repeating: [Tiles?] (repeating: nil, count: 5), count: 5)
    
    init (scene: GameScene) {
        
        for x in 0...gridSize{
            
            for  y in 0...gridSize {
                
                arrray[x][y] = Tiles()
                arrray[x][y]?.sprite.position = CGPoint(x: (x * 145) - 290, y: (y * 135) - 450)
                scene.addChild((arrray[x][y]?.sprite)!)
                
                
            }
        }
        
        sprite.size = CGSize(width: 50, height: 50)
    }
    
    func move() {
        
        sprite.position = CGPoint(x:
            
            Int(sprite.position.x) + xSpeed, y: Int(sprite.position.y)
        + ySpeed)
    }
    
}


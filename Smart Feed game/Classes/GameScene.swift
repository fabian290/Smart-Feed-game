//
//  GameScene.swift
//  Smart Feed game
//
//  Created by Fabian Hernandez Aguilar on 4/11/19.
//  Copyright © 2019 Fabian Hernandez Aguilar. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var tiles = Tiles()
    var grid : Grid?
    


    
    override func didMove(to view: SKView) {
        self.addChild(tiles.sprite)
    grid = Grid(scene: self)
        //Gesture motion 
        
       
            let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
            // the default direction is right
            
            let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
            leftSwipe.direction = .left
            
            let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
            upSwipe.direction = .up
            
            let downSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
            downSwipe.direction = .down
            
            view.addGestureRecognizer(rightSwipe)
            view.addGestureRecognizer(leftSwipe)
            view.addGestureRecognizer(upSwipe)
            view.addGestureRecognizer(downSwipe)
        }
        
        @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
            if sender.state == .ended {
                switch sender.direction {
                case .right:
                    view?.backgroundColor = .red
                case .left:
                    view?.backgroundColor = .blue
                case .up:
                    view?.backgroundColor = .green
                case .down:
                    view?.backgroundColor = .yellow
                default:
                    break
                }
            }
        }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
       
    }
    
    func moveUp() {
        for x in 0...4 {
            
            
            for y in 0...4 {
              
                var nextX = x
                var nextY = y + 1
                
//                while nextY < 5 {
                

                    
                }
                
        }
        
    }
        
}
    
    func moveDown() {
        
        
    }
    
    func moveRight() {
        
        
    }
    
    func moveLeft() {
        
        
    }

//Spwan tiles situations

    func spawnTile() {
        
   var gridArray = [[Tiles?]]()
        
        //empty cell on the grid array
        var noTile : Tiles? = nil
     
        }

    
/*  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
 */

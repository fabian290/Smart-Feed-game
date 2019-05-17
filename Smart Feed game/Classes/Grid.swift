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
   
    
    let gridSize = 5

    var xSpeed = 5
    var speed = 5,  ySpeed = 1
    
    var sprite = SKSpriteNode(imageNamed: "Tiles");
    var newTile = Tiles()
    
    //Note from Mr. Kidd:
        // Your left/right are not working because you need to swap nextX and nextY in your left/right functions
    
    
    //Double array, which shows the grids
    var arrray = [[Tiles?]](repeating: [Tiles?] (repeating: nil, count: 5), count: 5)
    
    init (scene: GameScene) {
        
        for x in 0...gridSize - 1 {
            
            for  y in 0...gridSize - 1 {
                
                arrray[x][y] = Tiles()
                arrray[x][y]?.sprite.position = CGPoint(x: (x * 145) - 290, y: (y * 135) - 450)
                scene.addChild((arrray[x][y]?.sprite)!)
                arrray[x][y]?.setCount(newCount: 0)
                
            }
        }
        arrray[2][3]?.setCount(newCount: 2)
        arrray[2][2]?.setCount(newCount: 2)
        sprite.size = CGSize(width: 50, height: 50)
    }
    
    func move() {
        sprite.position = CGPoint(x:
            
            Int(sprite.position.x) + xSpeed, y: Int(sprite.position.y)
        + ySpeed)
    }
    
    func moveUp() {
        
        for x in 0...4 {
            for y in stride(from: 4, to: -1, by: -1) {
                arrray[x][y]?.hasMoved = false
            }
        }
        for x in 0...4 {
            for y in  stride(from: 4, to: -1, by: -1){
                var nextX = x
                var nextY = y + 1
                
                if arrray[x][y]?.count == 0 {
                    continue
                }
                
                while nextY <= 4 && arrray[nextX][nextY]!.count == 0 {
                    
                    let currTile = arrray[nextX][nextY - 1];
                    arrray[nextX][nextY]?.setCount(newCount: currTile!.count);
                    currTile!.setCount(newCount: 0)
                    nextY += 1
//                    tileMove = true
                    
                }
                if nextY <= 4 && (arrray[nextX][nextY]?.count)! == arrray[nextX][nextY - 1]!.count && arrray[nextX][nextY - 1]!.hasMoved == false {
                    
                    arrray[nextX][nextY]?.setCount(newCount: arrray[nextX][nextY]!.count * 2)
                    arrray[nextX][nextY - 1]!.setCount(newCount: 0);
                    arrray[nextX][nextY]!.hasMoved = true
//                    score += arrray[nextX][nextY]!.count
                }
//                print(score)
                
            }
            
        }
        
    }
    func moveDown() {
        
        for x in 0...4 {
            for y in 0...4 {
                arrray[x][y]?.hasMoved = false
            }
        }
        for x in 0...4 {
            for y in  0...4{
                var nextX = x
                var nextY = y - 1
                
                if arrray[x][y]?.count == 0 {
                    continue
                }
                
                while nextY >= 0 && arrray[nextX][nextY]!.count == 0 {
                    
                    let currTile = arrray[nextX][nextY + 1];
                    arrray[nextX][nextY]?.setCount(newCount: currTile!.count);
                    currTile!.setCount(newCount: 0)
                    nextY -= 1
                    //                    tileMove = true
                    
                }
                if nextY >= 0 && (arrray[nextX][nextY]?.count)! == arrray[nextX][nextY + 1]!.count && arrray[nextX][nextY + 1]!.hasMoved == false {
                    
                    arrray[nextX][nextY]?.setCount(newCount: arrray[nextX][nextY]!.count * 2)
                    arrray[nextX][nextY + 1]!.setCount(newCount: 0);
                    arrray[nextX][nextY]!.hasMoved = true
                    //                    score += arrray[nextX][nextY]!.count
                }
                //                print(score)
                
            }
            func isover() -> Bool {
                for row in arrray {
                    for tile in row {
                        if tile count = 0 {
                            return false
                        }
                        if  x > 0 {
                            var nextY = y
                        arrray[x - 1][nextY]
                        }
                    }
                }
                
                
            }
            
        }
        
    }
    func moveLeft() {
        
        for x in 0...4 {
            for y in 0...4 {
                arrray[x][y]?.hasMoved = false
            }
        }
        for x in 0...4 {
            for y in  0...4 {
                var nextX = x - 1
                var nextY = y
                
                if arrray[x][y]?.count == 0 {
                    continue
                }
                
                while nextX >= 0 && arrray[nextX][nextY]!.count == 0 {
                    
                     let currTile = arrray[nextX + 1][nextY];
                    arrray[nextX][nextY]?.setCount(newCount: currTile!.count);
                    currTile!.setCount(newCount: 0)
                    nextX -= 1
                    //                    tileMove = true
                    
                }
                if nextX >= 0 && arrray[nextX][nextY]?.count == arrray[nextX + 1][nextY]?.count && arrray[nextX + 1][nextY]!.hasMoved == false {
                    
                    arrray[nextX][nextY]?.setCount(newCount: arrray[nextX][nextY]!.count * 2)
                    arrray[nextX +  1][nextY]!.setCount(newCount: 0);
                    arrray[nextX][nextY]!.hasMoved = true
                    //                    score += arrray[nextX][nextY]!.count
                }
                //                print(score)
                
            }
            
        }
        
    }
    func moveRight() {
        
        for x in 0...4 {
            for y in 0...4 {
                arrray[x][y]?.hasMoved = false
            }
        }
        for x in stride(from: 4, to: -1, by: -1) {
            for y in  0...4{
                var nextX = x + 1
                var nextY = y
                
                if arrray[x][y]?.count == 0 {
                    continue
                }
                
                while nextX <= 4 && arrray[nextX][nextY]!.count == 0 {
                    print(nextY, nextX);
                    let currTile = arrray[nextX - 1][nextY];
                    arrray[nextX][nextY]?.setCount(newCount: currTile!.count);
                    currTile!.setCount(newCount: 0)
                    nextX += 1
                    //                    tileMove = true
                    
                }
                if nextX <= 4 && (arrray[nextX][nextY]?.count)! == arrray[nextX - 1][nextY]!.count && arrray[nextX - 1][nextY]!.hasMoved == false {
                    
                    arrray[nextX][nextY]?.setCount(newCount: arrray[nextX][nextY]!.count * 2)
                    arrray[nextX - 1][nextY]!.setCount(newCount: 0);
                    arrray[nextX][nextY]!.hasMoved = true
                    //                    score += arrray[nextX][nextY]!.count
                }
                //                print(score)
                
            }
            
        }
        
    }



    
    
   
}


//
//  GameMenu.swift
//  Game
//
//  Created by pandazheng on 15/8/1.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import Foundation
import SpriteKit

class GameMenu : SKScene {
    
    let simple = SKSpriteNode(imageNamed: "SIMPLE")
    let middle = SKSpriteNode(imageNamed: "MIDDLE")
    let harder = SKSpriteNode(imageNamed: "HARDER")
    
    override func didMoveToView(view: SKView) {
        backgroundColor = UIColor.magentaColor()
        
        simple.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/2 + 100)
        middle.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/2)
        harder.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/2 - 100)
        addChild(simple)
        addChild(middle)
        addChild(harder)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        for touch in (touches as! Set<UITouch>) {
            let location = touch.locationInNode(self)
            
            if simple.containsPoint(location) {
                let simplescene = Simple(size : self.frame.size)
                self.view?.presentScene(simplescene, transition: SKTransition.doorsOpenHorizontalWithDuration(0.1))
            } else if middle.containsPoint(location) {
                let middlescene = Middle(size: self.frame.size)
                self.view?.presentScene(middlescene, transition: SKTransition.fadeWithDuration(0.1))
            } else if harder.containsPoint(location) {
                let harderscene = Harder(size: self.frame.size)
                self.view?.presentScene(harderscene, transition: SKTransition.crossFadeWithDuration(0.1))
            }
        }
    }
}

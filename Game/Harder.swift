//
//  Harder.swift
//  Game
//
//  Created by pandazheng on 15/8/1.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import Foundation
import SpriteKit

class Harder : SKScene {
    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor.blueColor()
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        let scene = GameMenu(size: self.frame.size)
        self.view?.presentScene(scene, transition: SKTransition.doorsOpenVerticalWithDuration(0.1))
    }
}

//
//  Simple.swift
//  Game
//
//  Created by pandazheng on 15/8/1.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import Foundation
import SpriteKit

class Simple : SKScene {
    override func didMoveToView(view: SKView) {
        backgroundColor = UIColor(red: 0.25, green: 187, blue: 154, alpha: 1.0)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        let scene = GameMenu(size : self.frame.size)
        self.view?.presentScene(scene, transition: SKTransition.crossFadeWithDuration(0.1))
    }
}

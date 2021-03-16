//
//  GameScene.swift
//  KEVIN
//
//  Created by Artem Koloskov on 17/02/2019.
//  Copyright © 2019 Artem Koloskov. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var mom : SKSpriteNode?
    private let kevinSound = SKAction.playSoundFileNamed("KEVIN.wav", waitForCompletion: false)
    
    override func didMove(to view: SKView) {
        
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        self.mom = self.childNode(withName: "//mom") as? SKSpriteNode
        if let mom = self.mom {
            mom.size = CGSize(width: size.width - 4, height: size.width - 4)
            mom.alpha = 0.0
            mom.run(SKAction.fadeIn(withDuration: 2.0))
            mom.run(SKAction.init(named: "LoopMom")!)
        }
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let mom = self.mom {
            mom.run(SKAction.init(named: "KEVIN")!)
            run(kevinSound)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}

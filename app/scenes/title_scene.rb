class TitleScene < SKScene

  def initWithSize(size)
    return self if ! super
    addChild background
    return self
  end

  def background
    @background ||= SKSpriteNode.spriteNodeWithImageNamed("airPlanesBackground").tap do |bg|
      bg.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame))
    end
  end

  def touchesBegan(touches, withEvent: event)
    gameScene = GameScene.sceneWithSize(self.frame.size)
    transition = SKTransition.crossFadeWithDuration(1.0)
    self.view.presentScene(gameScene, transition:transition)
  end
end
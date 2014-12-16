class GameViewController < UIViewController
  def loadView
    view = SKView.new
    view.showsFPS = true
    view.showsNodeCount = true
    view.showsDrawCount = true
    self.view = view
  end

  def prefersStatusBarHidden
    true
  end

  def shouldAutorotate
    false
  end

  def viewWillLayoutSubviews
    super

    unless self.view.scene
      scene = TitleScene.alloc.initWithSize(view.bounds.size)
      # scene.scaleMode = SKSceneScaleModeResizeFill#SKSceneScaleModeAspectFill
      view.presentScene scene
    end
  end
end
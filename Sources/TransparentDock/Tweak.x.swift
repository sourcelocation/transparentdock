import Orion
import UIKit


class iOSDockHook: ClassHook<UIView> {
    static let targetName = "SBDockView"
    
    func setBackgroundAlpha(_ alpha: CGFloat) {
        orig.setBackgroundAlpha(0)
    }
}

class iPadDockHook: ClassHook<UIView> {
    static let targetName = "SBFloatingDockPlatterView"
    
    func didMoveToWindow() {
        orig.target.isHidden = true
    }
}

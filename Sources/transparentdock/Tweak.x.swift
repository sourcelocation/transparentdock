import Orion
import UIKit
import TransparentDockC


class iOSDockHook: ClassHook<UIView> {
    static var targetName: String = "SBDockView"
    
    func layoutSubviews() {
        orig.target.backgroundColor = UIColor(white: 0, alpha: 0)
    }
}

class iPadDockHook: ClassHook<UIView> {
    static var targetName: String = "SBFloatingDockPlatterView"
    
    func layoutSubviews() {
        orig.target.isHidden = true
    }
}

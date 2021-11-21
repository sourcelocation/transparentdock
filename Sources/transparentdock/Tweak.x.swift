import Orion
import UIKit
import transparentdockC


class DockHook: ClassHook<UIView> {
    static var targetName: String = "SBDockView"
    
    func layoutSubviews() {
        orig.target.backgroundColor = UIColor(white: 0, alpha: 0)
    }
}

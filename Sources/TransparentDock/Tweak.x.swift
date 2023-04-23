import Orion
import UIKit
import TransparentDockC


//class LabelHook: ClassHook<UILabel> {
//    func setText(_ str: String) {
//        orig.setText("ROOTLESS 😎")
//    }
//}

class iOSDockHook: ClassHook<SBDockView> {
    func setBackgroundView(_ arg1: UIView) {
//        remLog("hi! \(arg1)")
//        let view = UIView(frame: target.frame)
//        view.backgroundColor = .red
//        target.superview!.addSubview(view)
//        target.isHidden = true
//        let image = UIImageView(frame: target.frame)
//        image.image = UIImage(contentsOfFile: "/var/mobile/Documents/fr.png")
        orig.setBackgroundView(UIView())
    }
}
//
//class iPadDockHook: ClassHook<UIView> {
//    static let targetName = "SBFloatingDockPlatterView"
//
//    func didMoveToWindow() {
//        orig.target.isHidden = true
//    }
//}

func remLog(_ objs: Any...) {
    for obj in objs {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss.SSS"
        let args: [CVarArg] = [ "[\(formatter.string(from: Date()))] " + String(describing: obj) ]
        withVaList(args) { RLogv("%@", $0) }
    }
}

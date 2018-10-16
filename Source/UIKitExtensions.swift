
import Foundation

// MARK: - UIBarItem extension -

extension UIBarItem {
	var view: UIView? {
		if let item = self as? UIBarButtonItem, let customView = item.customView {
			return customView
		}
		return value(forKey: "view") as? UIView
	}
}

// MARK: - UIView extension -

extension UIView {
	func hasSuperview(_ superview: UIView) -> Bool {
		return viewHasSuperview(self, superview: superview)
	}

	fileprivate func viewHasSuperview(_ view: UIView, superview: UIView) -> Bool {
		if let sview = view.superview {
			if sview === superview {
				return true
			} else {
				return viewHasSuperview(sview, superview: superview)
			}
		} else {
			return false
		}
	}
}

// MARK: - CGRect extension -

extension CGRect {
	var x: CGFloat {
		get {
			return origin.x
		}
		set {
			origin.x = newValue
		}
	}

	var y: CGFloat {
		get {
			return origin.y
		}

		set {
			origin.y = newValue
		}
	}

//
	//    var width: CGFloat {
	//        get {
	//         return self.size.width
	//        }
	//
	//        set {
	//            self.size.width = newValue
	//        }
	//    }
	//
	//    var height: CGFloat {
	//        get {
	//            return self.size.height
	//        }
	//
	//        set{
	//            self.size.height = newValue
	//        }
	//    }

	//    var maxX: CGFloat {
	//        return self.maxX
	//    }
	//
	//    var maxY: CGFloat {
	//        return self.maxY
	//    }

	var center: CGPoint {
		return CGPoint(x: x + width / 2, y: y + height / 2)
	}
}

import UIKit
class Meal {

    var name:String
    var content:String
    var photo: UImage?
    var pos: CGPoint
    var isChecked: Bool

    init?( name:String, photo: UIImage?, postion: CGRect, isChecked: Bool) {
        self.name = name
        self.photo = photo
        self.position = postion
        self.isChecked = false;
    }
}
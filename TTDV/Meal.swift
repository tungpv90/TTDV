import UIKit
class Meal {

var name:String
var photo: UImage?
var position: CGRect(0,0,0,0)
var isChecked: Bool = false

init?( name:String, photo: UIImage?, postion: CGRect, isChecked: Bool) {


self.name = name
self.photo = photo
self.position = postion
selft.isChecked = false;

}



}
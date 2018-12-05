/********************************************************************************/
/* FILE NAME      : */
/* PROJECT NAME   : */
/* OUTLINE        : */
/* HISTORY        : Ver.1.00 : 2018/12/05 TUNGPV Content    */
/*				  : Ver.2.00 : */
/* 				Copyright (C) 2017 THStudio All Rights Reserved.					*/
/********************************************************************************/
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
/********************************************************************************/
/* FILE NAME      : */
/* PROJECT NAME   : */
/* OUTLINE        : */
/* HISTORY        : Ver.1.00 : 2018/12/05 TUNGPV Content    */
/*				  : Ver.2.00 : */
/* 				Copyright (C) 2017 TKCC All Rights Reserved.					*/
/********************************************************************************/


import UIKit

class CircleView: UIView {

    var x: Int
    var y: Int
    var w: Int
    var h: Int
    
    init(x: Int, y: Int, w: Int, h: Int) {
        self.x = x
        self.y = y
        self.w = w
        self.h = h
    }

/********************************************************************************/
/* NAME			:  	*/
/* FUNCTION		:	Draw a circle*/ 
/* PARAMETER	: 	*/
/* RETURN		: 	*/
/* PROGRAMMED	: 	*/
/* DATE(ORG)	: 	*/
/* NOTE			: 	*/
/********************************************************************************/
    override func draw(_ rect: CGRect) {
        // Get the Graphics Context
        if let context = UIGraphicsGetCurrentContext() {
            UIColor.red.setFill()
            context?.setAlpha(0.3)
            context?.setBlendMode(.darken)
            // Create Circle
            let center = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
            let radius = (frame.size.width - 10)/2
            context.addArc(center: center, radius: radius, startAngle: 0.0, endAngle: .pi * 2.0, clockwise: true)
            context.fillPath()
        }
    }

}

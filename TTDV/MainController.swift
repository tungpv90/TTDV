/********************************************************************************/
/* FILE NAME      : */
/* PROJECT NAME   : */
/* OUTLINE        : */
/* HISTORY        : Ver.1.00 : 2018/12/05 TUNGPV Content    */
/*				  : Ver.2.00 : */
/* 				Copyright (C) 2017 TKCC All Rights Reserved.					*/

import UIKit

class MainController: UIViewController { 
    @IBOutlet weak var circleView: CircleView! 
    @IBOutlet weak var selectedView: SelectedVIew!
    @IBOutlet weak var mainView: UIView!
    var delegate : MealDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad() 
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
/********************************************************************************/
/* NAME			:  	*/
/* FUNCTION		:	*/ 
/* PARAMETER	: 	*/
/* RETURN		: 	*/
/* PROGRAMMED	: 	*/
/* DATE(ORG)	: 	*/
/* NOTE			: 	*/
/********************************************************************************/
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let circleCenter = touch.location(in: view) 
            circleView.center = circleCenter
            if(circleCenter.y < mainView.frame.height / 2)
            {
                if(circleCenter.x < mainView.frame.width / 2)
                {
                    selectedView.PathDirect = PDirection.A4
                    selectedView.frame.origin.x = circleCenter.x
                    selectedView.frame.origin.y = circleCenter.y    
                }
                else
                {
                    selectedView.PathDirect = PDirection.A3
                    selectedView.frame.origin.x = circleCenter.x - selectedView.frame.width
                    selectedView.frame.origin.y = circleCenter.y
                }
            }
            else
            {
                if(circleCenter.x < mainView.frame.width / 2)
                {
                    selectedView.PathDirect = PDirection.A1
                    selectedView.frame.origin.x = circleCenter.x
                    selectedView.frame.origin.y = circleCenter.y - selectedView.frame.height
                }
                else
                {
                    selectedView.PathDirect = PDirection.A2
                    selectedView.frame.origin.x = circleCenter.x - selectedView.frame.width
                    selectedView.frame.origin.y = circleCenter.y - selectedView.frame.height
                }
            }
            selectedView.setNeedsDisplay()
        }
    }

/********************************************************************************/
/* NAME			:  	*/
/* FUNCTION		:	*/ 
/* PARAMETER	: 	*/
/* RETURN		: 	*/
/* PROGRAMMED	: 	*/
/* DATE(ORG)	: 	*/
/* NOTE			: 	*/
/********************************************************************************/
    func checkResult(x: Int, y: Int)->Bool {

        var xC = circleView.x
        var yC = circleView.y
        var wC = circleView.w
        var hC = circleView.h
        if (x > xC && x < xC + wC && y > yC && y < yC + w ) {
            return true
        }
        return false 
    }
}

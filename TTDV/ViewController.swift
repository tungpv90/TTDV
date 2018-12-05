/********************************************************************************/
/* FILE NAME      : ViewController.swift */
/* PROJECT NAME   : */
/* OUTLINE        : */
/* HISTORY        : Ver.1.00 : 2018/12/05 TUNGPV Content    */
/*				  : Ver.2.00 : */
/* 				Copyright (C) 2017 TKCC All Rights Reserved.					*/
/********************************************************************************/

import UIKit

class ViewController: UIViewController {

    var menuController : MenuController?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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

    @IBAction func OnStartClicked(_ sender: Any) {
        performSegue(withIdentifier: "Menu", sender: self)
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
    func switchToViewController(_ toVC: UIViewController?) {
        if (toVC != nil) {
            addChildViewController((toVC)!)
            view.addSubview((toVC?.view)!)
            toVC?.didMove(toParentViewController: self)
        }
    }
}
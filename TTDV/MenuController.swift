﻿/********************************************************************************/
/* FILE NAME      : MenuController.swift*/
/* PROJECT NAME   : */
/* OUTLINE        : */
/* HISTORY        : Ver.1.00 : 2018/12/05 TUNGPV Content    */
/*				  : Ver.2.00 : */
/* 				Copyright (C) 2017 TKCC All Rights Reserved.					*/
/********************************************************************************/


import UIKit

class MenuController: UIViewController {

	var meals1 = [Meal]()
	var meals2 = [Meal]()
	var meals3 = [Meal]()
	var meals4 = [Meal]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    func initMeal() {
        for index 1...20 {
		    let photo = UIImage(named:"meal1_\(index)")
		    let cgRect = CGRect(0,9,9,9)
		    guard let meal = Meal(name:"meal1_\(index)", question: "", foto:photo, pos: CGPoint(x: 0, y: 0), isChecked: false)
                else {
                    fatalError("Unable to instantiate meal1")
                }
            meals1 += [meal]
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
    @IBAction func OnQuestionClicked(_ sender: Any) {
        performSegue(withIdentifier: "MenuToMain", sender: self)
    }
}

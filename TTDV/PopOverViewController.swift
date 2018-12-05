/********************************************************************************/
/* FILE NAME      : */
/* PROJECT NAME   : */
/* OUTLINE        : */
/* HISTORY        : Ver.1.00 : 2018/12/05 TUNGPV Content    */
/*				  : Ver.2.00 : */
/* 				Copyright (C) 2017 TKCC All Rights Reserved.					*/
/********************************************************************************/

import UIKit
 
class PopOverViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
	@IBOutlet weak var Popupview: UIView!
    var meals = [Meals]()
    
	@IBOutlet weak var tableView: UITableView!

/********************************************************************************/
/* NAME			:  	*/
/* FUNCTION		:	*/ 
/* PARAMETER	: 	*/
/* RETURN		: 	*/
/* PROGRAMMED	: 	*/
/* DATE(ORG)	: 	*/
/* NOTE			: 	*/
/********************************************************************************/
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self 
        tableView.delegate = self 
     
       // Apply radius to Popupview
        Popupview.layer.cornerRadius = 10
        Popupview.layer.masksToBounds = true
        loadMeals()
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
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
/********************************************************************************/
/* NAME			:  	*/
/* FUNCTION		:Returns count of items in tableView	*/ 
/* PARAMETER	: 	*/
/* RETURN		: 	*/
/* PROGRAMMED	: 	*/
/* DATE(ORG)	: 	*/
/* NOTE			: 	*/
/********************************************************************************/
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count;
    }
    
/********************************************************************************/
/* NAME			:  	*/
/* FUNCTION		:Select item from tableView	*/ 
/* PARAMETER	: 	*/
/* RETURN		: 	*/
/* PROGRAMMED	: 	*/
/* DATE(ORG)	: 	*/
/* NOTE			: 	*/
/********************************************************************************/
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //print("Company Name : " + names[indexPath.row])
      
         //Shared.shared.companyName = names[indexPath.row]
 
        //let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //let newViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        //self.present(newViewController, animated: true, completion: nil)
    }

/********************************************************************************/
/* NAME			:  	*/
/* FUNCTION		:Assign values for tableVieww	*/ 
/* PARAMETER	: 	*/
/* RETURN		: 	*/
/* PROGRAMMED	: 	*/
/* DATE(ORG)	: 	*/
/* NOTE			: 	*/
/********************************************************************************/
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
 
        let meal = meals[indexPath.row]
        // add properties for cell by meal
        //cell.nameLabel.text = meal.name
        //cell.photoImageView.image = meal.foto
        //cell.position = meal.position
       // cell.isChecked = meal.isChecked
  
        return cell
        
    }

/********************************************************************************/
/* NAME			:  	*/
/* FUNCTION		:Load All meals	*/ 
/* PARAMETER	: 	*/
/* RETURN		: 	*/
/* PROGRAMMED	: 	*/
/* DATE(ORG)	: 	*/
/* NOTE			: 	*/
/********************************************************************************/
	func loadMeals() {
    
        for index 1...20 {
            let name = String("meal1_\(index)")
            let photo = UIImage(named:"meal1_\(index)")

		    guard let meal = Meal(name: name, question: "", foto:photo, position: CGPoint(x: 0,y: 0), isChecked: false)
            else {
			    fatalError("Unable to instantiate meal1")
            }

            meals1+=[meal]
        }
    }
}


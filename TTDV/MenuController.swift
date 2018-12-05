//
//  MenuController.swift
//  TTDV
//
//  Created by MD387zp on 11/14/18.
//  Copyright © 2018 htstudio. All rights reserved.
//

import UIKit

class MenuController: UIViewController {

	var meals1 = [Meals]()
	var meals2 = [Meals]()
	var meals3 = [Meals]()
	var meals4 = [Meals]()
	
	
	for index 1...20 {
		let photo = UIImage(named:"meal1_\(index)")
		let cgRect = CGRect(0,9,9,9)
		guard let meal = Meal(name:"meal1_\(index)", photo:photo, position: cgRect, isChecked: false) else {
fatalError("Unable to instantiate meal1")
}
meals1+=[meal]
}
	for index 1...20 {
		let photo = UIImage(named:"meal1_\(index)")
		let cgRect = CGRect(0,9,9,9)
		guard let meal = Meal(name:"meal1_\(index)", photo:photo, position: cgRect, isChecked: false) else {
fatalError("Unable to instantiate meal1")
}
meals2+=[meal]
}
	for index 1...20 {
		let photo = UIImage(named:"meal1_\(index)")
		let cgRect = CGRect(0,9,9,9)
		guard let meal = Meal(name:"meal1_\(index)", photo:photo, position: cgRect, isChecked: false) else {
fatalError("Unable to instantiate meal1")
}
meals3+=[meal]
}
	for index 1...20 {
		let photo = UIImage(named:"meal1_\(index)")
		let cgRect = CGRect(0,9,9,9)
		guard let meal = Meal(name:"meal1_\(index)", photo:photo, position: cgRect, isChecked: false) else {
fatalError("Unable to instantiate meal1")
}
meals4+=[meal]
}


}


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return meals.count
}

override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    // Table view cells are reused and should be dequeued using a cell identifier.
    let cellIdentifier = "MealTableViewCell"
    
    guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MealTableViewCell  else {
        fatalError("The dequeued cell is not an instance of MealTableViewCell.")
    }
    
    // Fetches the appropriate meal for the data source layout.
    let meal = meals[indexPath.row]
    
    cell.nameLabel.text = meal.name
    cell.photoImageView.image = meal.photo
    cell.ratingControl.rating = meal.rating
    
    return cell
}


    @IBAction func OnQuestionClicked(_ sender: Any) {
        performSegue(withIdentifier: "MenuToMain", sender: self)    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

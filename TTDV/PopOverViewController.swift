import UIKit
 
class PopOverViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
	@IBOutlet weak var Popupview: UIView!
    var meals = [Meals]()
    
	@IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self 
        tableView.delegate = self 
     
       // Apply radius to Popupview
        Popupview.layer.cornerRadius = 10
        Popupview.layer.masksToBounds = true
        loadMeals()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Returns count of items in tableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count;
    }
    
    
    // Select item from tableView
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //print("Company Name : " + names[indexPath.row])
      
         //Shared.shared.companyName = names[indexPath.row]
 
        //let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        //let newViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
       //self.present(newViewController, animated: true, completion: nil)
  
    }
    
    //Assign values for tableView
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
 
        let meal = meals[indexPath.row]
        // add properties for cell by meal
        cell.nameLabel.text = meal.name
        cell.photoImageView.image = meal.photo
        cell.position = meal.position
        cell.isChecked = meal.isChecked
  
        return cell
        
    }
    // load meals

	func loadMeals() {
    
        for index 1...20 {
            let foto = UIImage(named:"meal1_\(index)")
            let cgRect = CGRect(0,0,0,0)

		    guard let meal = Meal(name:"meal1_\(index)", photo:photo, position: cgRect, isChecked: false)
            else {
			fatalError("Unable to instantiate meal1")
            }
        meals1+=[meal]
        }
    }
}


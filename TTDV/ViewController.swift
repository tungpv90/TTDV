//
//  ViewController.swift
//  TTDV
//
//  Created by MD387zp on 11/13/18.
//  Copyright © 2018 htstudio. All rights reserved.
//

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

    @IBAction func OnStartClicked(_ sender: Any) {
        performSegue(withIdentifier: "Menu", sender: self)
    }
    func switchToViewController(_ toVC: UIViewController?) {
        if (toVC != nil) {
            addChildViewController((toVC)!)
            view.addSubview((toVC?.view)!)
            toVC?.didMove(toParentViewController: self)
        }
    }}


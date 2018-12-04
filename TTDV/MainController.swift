//
//  MainController.swift
//  TTDV
//
//  Created by MD387zp on 11/14/18.
//  Copyright © 2018 htstudio. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    
    @IBOutlet weak var circleView: CircleView!
    
    @IBOutlet weak var selectedView: SelectedVIew!
    
    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
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
    }}

//
//  SelectedVIew.swift
//  TTDV
//
//  Created by MD387zp on 11/21/18.
//  Copyright © 2018 htstudio. All rights reserved.
//

import UIKit

enum PDirection : Int {
    //       |
    //   A2  |  A1
    //-------|-------
    //   A3  |  A4
    //       |
    case A1 = 0
    case A2 = 1
    case A3 = 2
    case A4 = 3
    
}
class SelectedVIew: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var path: UIBezierPath!
    var pathDirect = PDirection.A1
    var PathDirect:PDirection {
        get{
            return pathDirect
        }
        set(p){
            pathDirect = p
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.clear
        createTextLayer()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func draw(_ rect: CGRect) {
     
        self.createRectangle()
        
        // Specify the fill color and apply it to the path.
        UIColor.orange.setFill()
        path.fill()
        
        // Specify a border (stroke) color.
        UIColor.white.setStroke()
        path.stroke()
        path.lineWidth = 5
        
    }
    
    func createRectangle() {
        // Initialize the path.
        path = UIBezierPath()
        switch pathDirect {
        case PDirection.A2:
            path.move(to: CGPoint(x: self.frame.size.width, y: self.frame.height))
            path.addLine(to: CGPoint(x: self.frame.size.width * 4.0/5, y: self.frame.height *  4.0/5))
            path.addLine(to: CGPoint(x: 0.0, y: self.frame.height *  4.0/5))
            path.addLine(to: CGPoint(x: 0.0, y: 0.0))
            path.addLine(to: CGPoint(x: self.frame.size.width, y: 0.0))
            path.close()
        case PDirection.A1:
            path.move(to: CGPoint(x: 0.0, y: self.frame.height))
            path.addLine(to: CGPoint(x: 0.0, y: 0.0))
            path.addLine(to: CGPoint(x: self.frame.size.width, y: 0.0))
            path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height * 4.0 / 5))
            path.addLine(to: CGPoint(x: self.frame.size.width / 5, y: self.frame.height * 4.0 / 5))
            path.close()
        case PDirection.A4:
            path.move(to: CGPoint(x: 0.0, y: 0.0))
            path.addLine(to: CGPoint(x: self.frame.size.width / 5, y: self.frame.size.height / 5))
            path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height / 5))
            path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
            path.addLine(to: CGPoint(x: 0.0, y: self.frame.height))
            path.close()
        case PDirection.A3:
            path.move(to: CGPoint(x: self.frame.size.width, y: 0.0))
            path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
            path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height))
            path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height / 5))
            path.addLine(to: CGPoint(x: self.frame.size.width * 4.0/5, y: self.frame.size.height / 5))
            path.close()
        }
        
    }
    
    func createTextLayer() {
        let textLayer = CATextLayer()
        textLayer.string = "WOW"
        textLayer.foregroundColor = UIColor.white.cgColor
        textLayer.font = UIFont(name: "Avenir", size: 9.0)
        textLayer.fontSize = 15.0
        textLayer.alignmentMode = kCAAlignmentCenter
        textLayer.backgroundColor = UIColor.orange.cgColor
        textLayer.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width, height: self.frame.size.height)
        textLayer.contentsScale = UIScreen.main.scale
        self.layer.addSublayer(textLayer)
    }
}

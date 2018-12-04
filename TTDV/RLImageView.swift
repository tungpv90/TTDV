//
//  RLImageView.swift
//  TTDV
//
//  Created by MD387zp on 11/26/18.
//  Copyright © 2018 htstudio. All rights reserved.
//

import UIKit
struct RLGrid {
    
}
class RLImageView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var sceneimage: UIImage?
    
    override init(image: UIImage?) {
        super.init(image: image)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func loadImage()
    {
    
    
    }

}

//
//  Input.swift
//  Pepite-iOS
//
//  Created by evan peuvergne on 15/12/2016.
//  Copyright © 2016 Evan Peuvergne. All rights reserved.
//

import UIKit


class Input: UITextField {
    
    
    /** Design **/
    
    func design ()
    {
        // Text
        self.textColor = Colors.white
        self.attributedPlaceholder = NSAttributedString(string: self.attributedPlaceholder!.string, attributes: [NSForegroundColorAttributeName: Colors.white])
        
        // Border
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = UIColor.init(white: 1, alpha: 0.7).cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height-width, width: self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
        
        // Background
        self.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
    }
    
    
    /** Init [Decoder] **/
    
    required init?(coder aDecoder: NSCoder)
    {
        // Parent
        super.init(coder: aDecoder)
        
        // Design
        self.design()
    }
    
}

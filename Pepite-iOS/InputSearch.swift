//
//  InputSearch.swift
//  Pepite-iOS
//
//  Created by evan peuvergne on 15/12/2016.
//  Copyright © 2016 Evan Peuvergne. All rights reserved.
//

import UIKit

class InputSearch: UITextField {

    
    /** Design **/
    
    let padding = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 10)
    
    func design ()
    {
        // Text
        self.textColor = Colors.white
        self.attributedPlaceholder = NSAttributedString(string: self.attributedPlaceholder!.string, attributes: [NSForegroundColorAttributeName: UIColor.init(white: 1, alpha: 0.5)])
        
        // Borders
        self.layer.cornerRadius = 18
        
        // Background
        self.backgroundColor = UIColor.init(white: 1.0, alpha: 0.27)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
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

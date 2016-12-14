//
//  Button.swift
//  Pepite-iOS
//
//  Created by evan peuvergne on 14/12/2016.
//  Copyright © 2016 Evan Peuvergne. All rights reserved.
//

import UIKit


@IBDesignable
class Button: UIButton{
    
    
    /** Attribute **/
    
     @IBInspectable var style: String = "main"{
         didSet{ self.setStyle(style: style) }
     }
    
     @IBInspectable var filled: Bool = true{
         didSet{ self.setFilled(filled: filled) }
     }
    
    
    /** Design **/
    
    func setStyle (style: String = "main")
    {
        // Detect
        let colors: [String: UIColor] = [ "main": Colors.main, "second": Colors.second, "white": UIColor.white ]
        var color = Colors.main
        color = colors[style]!
        
        // Styles
        self.backgroundColor = color
        self.layer.backgroundColor = color.cgColor
        
        self.layer.borderColor = color.cgColor
    }
    
    func setFilled (filled: Bool = true)
    {
        if(!filled){
            self.backgroundColor = UIColor(white: 1, alpha: 0)
            self.layer.backgroundColor = UIColor(white: 1, alpha: 0).cgColor
        }
    }
    
    
    /** Init [Decoder] **/

    required init(coder aDecoder: NSCoder)
    {
        // Parent
        super.init(coder: aDecoder)!
        
        // Design
        self.titleLabel!.font = UIFont.init(name: "SanFranciscoDisplay-Bold", size: 16)
        self.setTitleColor(UIColor.white, for: .normal)
        
        self.setStyle()
        
        self.layer.cornerRadius = 20
        self.layer.borderWidth = 2
        self.setFilled()
    }
    
    
    
}

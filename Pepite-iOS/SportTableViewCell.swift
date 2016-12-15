//
//  SportTableViewCell.swift
//  Pepite-iOS
//
//  Created by evan peuvergne on 15/12/2016.
//  Copyright © 2016 Evan Peuvergne. All rights reserved.
//

import UIKit

class SportTableViewCell: UITableViewCell {
    
    
    /** Elements **/

    @IBOutlet weak var title: UILabel!
    
    
    /** Initializers **/
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

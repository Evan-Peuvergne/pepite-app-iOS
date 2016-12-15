//
//  ActivateNotificationsViewController.swift
//  Pepite-iOS
//
//  Created by evan peuvergne on 15/12/2016.
//  Copyright © 2016 Evan Peuvergne. All rights reserved.
//

import UIKit
import AirshipKit

class ActivateNotificationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func activateNotifications(_ sender: Any)
    {
        UAirship.push().userPushNotificationsEnabled = true
        self.performSegue(withIdentifier: "transitionActivateNotificationsToChooseSports", sender: self)
    }
}

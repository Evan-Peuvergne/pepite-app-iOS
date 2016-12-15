//
//  ChooseSportViewController.swift
//  Pepite-iOS
//
//  Created by evan peuvergne on 15/12/2016.
//  Copyright © 2016 Evan Peuvergne. All rights reserved.
//

import UIKit

class ChooseSportViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var searchInput: InputSearch!
    @IBOutlet weak var tableView: UITableView!
    
    /** Initializers **/

    override func viewDidLoad()
    {
        // Parent
        super.viewDidLoad()
        
        // Delegate
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    /** Search **/
    
    @IBAction func searchUpdate(_ sender: Any) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SportCell", for: indexPath) as! SportTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
}

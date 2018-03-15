//
//  ManagerViewController.swift
//  Class4Mod3
//
//  Created by Admin on 2/03/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class ManagerViewController: JASidePanelController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func awakeFromNib() {
        leftPanel = storyboard?.instantiateViewController(withIdentifier: "menuTableViewController")
        centerPanel = storyboard?.instantiateViewController(withIdentifier: "opcionUnoViewController") 
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

}

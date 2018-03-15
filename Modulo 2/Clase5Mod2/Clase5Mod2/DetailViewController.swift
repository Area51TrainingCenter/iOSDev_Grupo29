//
//  DetailViewController.swift
//  Clase5Mod2
//
//  Created by Alumno on 2/19/18.
//  Copyright © 2018 Area51 Training Center. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var fullnameLabel: UILabel!
    @IBOutlet weak var pictureView: UIImageView!
    
    var platoSelected: Plato!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullnameLabel.text = platoSelected.fullname
        pictureView.image = UIImage(data: platoSelected.picture!)
        

    }
    
    @IBAction func update() {
        
        platoSelected.fullname = "San Isidro"
        let ap = UIApplication.shared.delegate as? AppDelegate
        ap?.saveContext()
        
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

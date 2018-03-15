//
//  formulariosViewController.swift
//  Clase03_b
//
//  Created by Alumno on 22/01/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class formulariosViewController: UIViewController {
    @IBOutlet weak var primero: UITextView!
    @IBOutlet weak var segundo: UITextView!
    @IBOutlet  weak var texto: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Unir() {
        texto.text = primero.text! + segundo.text!
        
    }

}

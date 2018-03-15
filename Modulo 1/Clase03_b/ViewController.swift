//
//  ViewController.swift
//  Clase03_b
//
//  Created by Alumno on 22/01/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var cajaTexto: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tituloLabel.text = "Center"
    }

    //override func loadView() { /Crea por codigo los objetos/
    //}
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Pressme(_ sender: UIButton) {
        print("Boton Presionado")
        tituloLabel.text = cajaTexto.text
        
    }

}


//
//  ManagerViewController.swift
//  Clase02
//
//  Created by Alumno on 19/01/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class ManagerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        performSegue(withIdentifier: "manual", sender: nil)  //any puede pasar un dato opcional
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Navigate
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    //if identifier= ""{}
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //crea instancia y puede pasar objetos   inicializarlos
    }


}

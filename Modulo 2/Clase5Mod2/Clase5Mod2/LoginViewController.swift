//
//  LoginViewController.swift
//  Clase5Mod2
//
//  Created by Alumno on 2/14/18.
//  Copyright © 2018 Area51 Training Center. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: .
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: .
    @IBAction func login() {
        
        saveNewUser()
        let p = UIApplication.shared.delegate as? AppDelegate
        p?.showApp()
    }
    
    func saveNewUser() {
        
        let ap = UIApplication.shared.delegate as? AppDelegate
        let context = ap?.persistentContainer.viewContext
        
        let newUser = Usuario(context: context!)
        newUser.fullname = "Area51 Training Center"
        newUser.password = "123456"
        newUser.email = "area@gmail.com"
        
        ap?.saveContext()
        
    }

}

//
//  NuevoViewController.swift
//  Clase7
//
//  Created by Alumno on 31/01/18.
//  Copyright © 2018 Area51 Training Center S.A.C. All rights reserved.
//

import UIKit

class NuevoViewController: UITableViewController, UITextFieldDelegate {
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: IBAction methods
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func saveButton(_ sender: Any) {

    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /*
        if let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath) as? FormCell {
            return cell
        }else {
            
        }*/

        let cell = tableView.dequeueReusableCell(withIdentifier: "formCell", for: indexPath) as! FormCell
        cell.valor.delegate = self
        cell.valor.tag = indexPath.row
        
        if indexPath.row == 0 {
            cell.titulo.text = "Nombre"
            cell.valor.placeholder = "Jhon"
        }else {
            cell.titulo.text = "Precio"
            cell.valor.placeholder = "USD"
        }
        return cell
    }
    
    //MARK: UITextFieldDelegate method
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("character")
        doneButton.isEnabled = true
        /*
        (tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as! FormCell).valor.tag == 0*/
        return true
    }

}

//
//  ListaViewController.swift
//  Clase05
//
//  Created by alumno on 26/01/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class ListaViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("Section: \(indexPath.section) - Row: \(indexPath.row)")
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)
        //cell.textLabel?.text = "San Isidro:  \(indexPath.row)"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
                // control.text
        return cell
    }
   
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Comentario "
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Clase de Ios"
    }
    
   // MARK: - UITableViewDelegate methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionado: \(indexPath.section) - Row: \(indexPath.row)")
    }
    
}

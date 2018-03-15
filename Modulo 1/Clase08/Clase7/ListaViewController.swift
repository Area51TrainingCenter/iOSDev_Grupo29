//
//  ListaViewController.swift
//  Clase7
//
//  Created by Alumno on 31/01/18.
//  Copyright © 2018 Area51 Training Center S.A.C. All rights reserved.
//

import UIKit

class ListaViewController: UITableViewController, NuevoViewControllerDelegate {
    
    var registros = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // inicializa en 44 por default
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // NuevoViewControllerDelegate
    func pasarRegistro(nuevo: [String : String]) {
       registros.append(nuevo)
        tableView.reloadData()
        print(nuevo)
    }

    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    
        
        if segue.identifier=="navSegue" {
            let nav = segue.destination as! UINavigationController //NuevoViewController
            let detail = nav.topViewController as? NuevoViewController
            // paso 3ç
            
            detail?.delegate = self
            //textfield.delegate  = self
        } else {
            if let indexPath = tableView.indexPathForSelectedRow{
                let detail = segue.destination as! DetailsViewController
                
                detail.diccionarioSeleccionario = registros[indexPath.row]
            }
        }
        
        //if segue.identifier == "detailSegue" {
            
        //}
        
        
        
        
        
        
        
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return registros.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let item = registros[indexPath.row]
        //item["key"]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as! ItemCell
        cell.nameLista.text = item["name"]
        cell.precioLista.text = item["precio"]
        return cell
        
    }

}

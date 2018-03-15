//
//  ListaViewController.swift
//  Clase5Mod2
//
//  Created by Alumno on 2/14/18.
//  Copyright © 2018 Area51 Training Center. All rights reserved.
//

import UIKit
import CoreData

class ListaViewController: UITableViewController {
    
    var platos: [Plato]?

    //MARK:
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        cargarPlatos()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: .
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailSegue" {
            
            let index = tableView.indexPathForSelectedRow!.row
            let plato = platos![index]
            
            let detail = segue.destination as! DetailViewController
            detail.platoSelected = plato
        }
        
    }
    
    func cargarPlatos() {
        
        let ap = UIApplication.shared.delegate as? AppDelegate
        let context = ap?.persistentContainer.viewContext
        
        let fetch = NSFetchRequest<Plato>(entityName: "Plato")
        
        do {
            platos = try context?.fetch(fetch)
            print(platos!.count)
            
            self.tableView.reloadData()
        }catch let error {
            print(error)
        }

    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return platos!.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)
        cell.textLabel?.text = platos![indexPath.row].fullname
 
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        let ap = UIApplication.shared.delegate as? AppDelegate
        let context = ap?.persistentContainer.viewContext
        
        let platoEliminado = platos![indexPath.row]
        
        context?.delete(platoEliminado)
        
        do {
            try context?.save()
        }catch let error {
            print(error)
        }

        cargarPlatos()

    }

}

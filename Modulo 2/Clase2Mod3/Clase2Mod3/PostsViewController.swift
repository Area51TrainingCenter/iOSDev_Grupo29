//
//  PostsViewController.swift
//  Clase2Mod3
//
//  Created by Admin on 2/26/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class PostsViewController: UITableViewController {
    
    var posts: [Any]?

    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()

        API.posts { (posts, error) in
            
            if let p = posts as? [Any] {
                
                DispatchQueue.main.async {
                    self.posts = p
                    self.tableView.reloadData()
                }
                
            }else {
                print(error?.localizedDescription)
            }
        }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "newItemSegue" {
            
        }else {
            
        }
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return posts == nil ? 0 : 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts!.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)
        
        if let post = posts![indexPath.row] as? [String: Any] {
            
            
            cell.textLabel?.text = post["title"] as? String
            cell.detailTextLabel?.text = post["author"] as? String
            
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        let post = posts![indexPath.row] as! [String: Any]
        
        if let i = post["id"] as? Int {
            API.deletePost(id: i, completion: { (succeeded, error) in
                
                if succeeded {
                    //remove cell
                }else {
                    print(error?.localizedDescription)
                }
                
            })
        }
        
        
        
        
    }

}

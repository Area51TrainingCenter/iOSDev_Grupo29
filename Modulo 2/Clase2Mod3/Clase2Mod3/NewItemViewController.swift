//
//  NewItemViewController.swift
//  Clase2Mod3
//
//  Created by Admin on 2/26/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        newPost()
        //updatePost()
        //deletePost()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func deletePost() {
        let postID = "\(2)"
        let url = URL(string: "http://localhost:3000/posts/"+postID)!
        var request = URLRequest(url: url)
        request.httpMethod = "DELETE"
        
        let session = URLSession.shared
        let task = session.dataTask(with: request) { (data, response, error) in
            
            print(response)
        }
        task.resume()
        
    }
    
    func updatePost() {
        
        let postID = "\(2)"
        let parameter = ["title": "Clases de programación", "author": "M", "id": "2"]
        
        let url = URL(string: "http://localhost:3000/posts/"+postID)!
        var request = URLRequest(url: url)
        request.httpMethod = "PUT"
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameter, options: .prettyPrinted)
        }catch let error {
            print(error.localizedDescription)
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: request) { (data, response, error) in
            
            print(response)
        }
        task.resume()
        
    }
    
    func newPost() {
        
        API.newPost(title: "Sprint", author: "Ek") { (postID, error) in
            
            if let _ = postID {
                print(postID!)
            }else {
                print(error)
            }
            
        }

    }
    
}

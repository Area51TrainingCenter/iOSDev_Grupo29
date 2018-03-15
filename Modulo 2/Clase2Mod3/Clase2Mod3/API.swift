//
//  API.swift
//  Clase2Mod3
//
//  Created by Admin on 2/28/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

class API {
    
    static func deletePost(id: Int, completion: (Bool, Error?) -> Void) {
        
        
    }

    static func newPost(title: String, author: String, completion: @escaping (Int?, Error?) -> Void) {
        
        let parameter = ["title": title, "author": author]
        
        let url = URL(string: "http://localhost:3000/posts")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameter, options: .prettyPrinted)
        }catch let error {
            print(error.localizedDescription)
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: request) { (data, response, error) in
            
            if let _ = data {
                
                do {
                    
                    let result = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
                    
                    if let dic = result as? [String: Any], let n = dic["id"] as? Int {
                        completion(n, nil)
                    }else {
                        completion(nil, nil)
                    }

                }catch let er {
                    completion(nil, er)
                }
                
                
            }else {
                completion(nil, error)
            }
        }
        task.resume()
        
    }
    
    static func posts(completion: @escaping (Any?, Error?) -> Void) {
        
        let url = URL(string: "http://localhost:3000/posts")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        let task = session.dataTask(with: request) {
            (data, response, error) in
            
            if let _ = data {
                
                do {
                    
                    let result = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
                    
                    completion(result, nil)
                    
                }catch let er {
                    completion(nil, er)
                }
                
                
            }else {
                completion(nil, error)
            }
        }
        task.resume()
    }
    
}

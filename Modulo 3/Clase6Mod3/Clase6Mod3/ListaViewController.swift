//
//  ListaViewController.swift
//  Clase6Mod3
//
//  Created by Admin on 3/9/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ListaViewController: UICollectionViewController {
    
    var frutas = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = collectionView?.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.size.width-2)/3, height: 100)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func addButton() {
        
        /*
         1.- agregarlo a mi array
         2.- actualizar la vista
 */
        frutas.append("Algo")
        collectionView?.insertItems(at: [IndexPath(row: frutas.count-1, section: 0)])

    }
    @IBAction func removeButton() {
        
    }

    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return frutas.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "testCell", for: indexPath)

        return cell
    }

}

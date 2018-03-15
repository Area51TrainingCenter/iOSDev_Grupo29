//
//  ListaViewController.swift
//  Clase8Mod2
//
//  Created by Alumno on 2/21/18.
//  Copyright © 2018 GPM. All rights reserved.
//

import UIKit

class ListaViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: Lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func registerCollectionViewCell() {
        
        let nib = UINib(nibName: "PersonaViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "personaViewCell")
    }
}

extension ListaViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "testCell", for: indexPath)
        return cell
        
    }

}

//
//  NewViewController.swift
//  Clase5Mod2
//
//  Created by Alumno on 2/14/18.
//  Copyright © 2018 Area51 Training Center. All rights reserved.
//

import UIKit

class NewViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var cajaUno: UITextField!
    @IBOutlet weak var cajaDos: UITextField!
    
    var pictureSelected: UIImage?

    //MARK: .
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: .
    @IBAction func takePicture() {
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            
            let picker = UIImagePickerController()
            picker.sourceType = .photoLibrary
            picker.delegate = self
            present(picker, animated: true, completion: nil)
            
        }else {
            
        }
 
    }
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func save() {
        
        let ap = UIApplication.shared.delegate as? AppDelegate
        let context = ap?.persistentContainer.viewContext
        
        let newPlato = Plato(context: context!)
        newPlato.fullname = "Franti"
        newPlato.price = NSDecimalNumber(decimal: 10.5)
        newPlato.picture = UIImageJPEGRepresentation(pictureSelected!, 1)

        
        ap?.saveContext()
        close()
        
    }
    
    //MARK: .
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("canceló")
        
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let picture = info[UIImagePickerControllerOriginalImage] as? UIImage {
            pictureSelected = picture
        }else {
            print("not image")
        }

        print("foto")
        picker.dismiss(animated: true, completion: nil)
    }

}

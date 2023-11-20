//
//  CreateRecipeViewController.swift
//  LetsCook
//
//  Created by Biraj Dahal on 11/17/23.
//

import UIKit

class CreateRecipeViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var uploadImageView: UIImageView!
    
    @IBOutlet weak var directionLabel: UITextView!
    
    @IBOutlet weak var ingredientsLabel: UITextField!
    
    @IBOutlet weak var recipeLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton=true
        uploadImageView.layer.cornerRadius = 20

        // Do any additional setup after loading the view.
    }
    @IBAction func uploadImageButton(_ sender: Any) {
        
        let vc = UIImagePickerController()
        vc.sourceType = .camera
        vc.allowsEditing = true
        vc.delegate = self
        present(vc, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

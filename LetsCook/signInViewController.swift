//
//  signInViewController.swift
//  LetsCook
//
//  Created by Biraj Dahal on 11/18/23.
//

import UIKit
import Firebase
import FirebaseFirestore
import FirebaseCore


class signInViewController: UIViewController {
    
    @IBOutlet weak var signinFNLabel: UITextField!
    @IBOutlet weak var signinEALabel: UITextField!
    @IBOutlet weak var signinPWLabel: UITextField!
    @IBOutlet weak var signinPWConfirmLabel: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signInPressed(_ sender: UIButton) {
                    guard let fn = signinFNLabel.text else{return}
                    

                    guard let email = signinEALabel.text else{return}

                    guard let pw = signinPWLabel.text else{return}

                    guard let cpw = signinPWConfirmLabel.text else{return}

        
        if fn.isEmpty{
            presentAlert(tit: "Please refill the information.", mes: "You must have your full name entered. You cannot have it empty.")
            return
        }
                    if (pw != cpw) {
                        presentAlert(tit: "Password Unmatched", mes: "Make sure your password, and confirm password field is same.")

                        return

                    }

                    

                    Auth.auth().createUser(withEmail: email, password: cpw){ firebaseResult, error in

                        if let e = error{
                            self.presentAlert(tit: "Please refill the information.", mes: e.localizedDescription)

                            return

                        }

                        else{
                            guard let userID = Auth.auth().currentUser?.uid else {return}
                            
                            let userData: [String: Any] = [
                                "fullName": fn,
                                "email": email,
                                "favouritesCount": 0,
                                "createdCount": 0
                            
                            ]
                            let userCollection = Firestore.firestore().collection("users")
                            userCollection.document(userID).setData(userData)
                            
                            self.performSegue(withIdentifier: "signInAccepted", sender: self)

                        }
                        

                    }
    }
    
    func presentAlert(tit:String, mes:String){
        let alertCon = UIAlertController(title:tit, message: mes, preferredStyle: .alert)

        let okAction = UIAlertAction(title:"OK", style: .default, handler:nil)

        alertCon.addAction(okAction)

        self.present(alertCon, animated: true, completion: nil)
    }

        
}

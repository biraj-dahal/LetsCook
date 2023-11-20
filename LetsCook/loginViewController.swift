//
//  loginViewController.swift
//  LetsCook
//
//  Created by Biraj Dahal on 11/18/23.
//

import UIKit
import Firebase

class loginViewController: UIViewController {

    @IBOutlet weak var loginUNLabel: UITextField!
    @IBOutlet weak var loginPWLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginClicked(_ sender: UIButton) {
        guard let lEmail = loginUNLabel.text else{
            return
        }
        guard let lPasswd = loginPWLabel.text else{
            return
        }
        
        Auth.auth().signIn(withEmail: lEmail, password: lPasswd){ firebaseResult, error in
            if let e = error{
                self.presentAlert(tit: "Please make sure of your credential.", mes: "The password is invalid or the user does not have a password!")
                return
            }
            else{
                self.performSegue(withIdentifier: "loginIsSelected", sender: self)
            }
            
            
        }
    }
    
    func presentAlert(tit:String, mes:String){
        let alertCon = UIAlertController(title:tit, message: mes, preferredStyle: .alert)

        let okAction = UIAlertAction(title:"OK", style: .default, handler:nil)

        alertCon.addAction(okAction)

        self.present(alertCon, animated: true, completion: nil)
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

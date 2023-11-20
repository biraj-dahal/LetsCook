//
//  UserProfileViewController.swift
//  LetsCook
//
//  Created by Biraj Dahal on 11/17/23.
//

import UIKit
import Firebase
import FirebaseFirestore
import FirebaseAuth


class UserProfileViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var cCount: UILabel!
    @IBOutlet weak var fCount: UILabel!
    var userName: String?
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        userImage.backgroundColor = .black
        userImage.layer.cornerRadius = 100
        
        if let currentUser = Auth.auth().currentUser {
            let userCollection = Firestore.firestore().collection("users").document(currentUser.uid)
            
            userCollection.getDocument { (document, error) in
              if let document = document, document.exists {
                  let dataDescription = document.data()

                  self.userNameLabel.text = dataDescription!["fullName"] as? String
                  self.emailLabel.text = dataDescription!["email"] as? String
                  if let createdCount = dataDescription?["createdCount"] as? Int {
                      print(createdCount)
                      self.cCount.text = "\(createdCount)"
                  } else {
                      print("createdCount is nil or not an Int")
                  }

                  if let favCount = dataDescription?["favouritesCount"] as? Int {
                      self.fCount.text = "\(favCount)"
                  } else {
                      print("createdCount is nil or not an Int")
                  }
              }
            }
            
                }
        

        // Do any additional setup after loading the view.
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

//
//  CategoriesViewController.swift
//  LetsCook
//
//  Created by Biraj Dahal on 11/17/23.
//

import UIKit

class CategoriesViewController: UIViewController {

    @IBOutlet weak var japaneseCuisine: UIImageView!
    
    @IBOutlet weak var ethiopiaCuisine: UIImageView!
    
    @IBOutlet weak var nepaliCuisine: UIImageView!
    
    
    @IBOutlet weak var italianCuisine: UIImageView!
    
    @IBOutlet weak var americanCuisine: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton=true
//        japaneseCuisine.layer.borderWidth = 0.2
//        japaneseCuisine.layer.borderColor = UIColor.systemOrange.cgColor
//        ethiopiaCuisine.layer.borderWidth = 0.2
//        ethiopiaCuisine.layer.borderColor = UIColor.systemOrange.cgColor
//        nepaliCuisine.layer.borderWidth = 0
//        nepaliCuisine.layer.borderColor = UIColor.systemOrange.cgColor
//        italianCuisine.layer.borderWidth = 0.2
//        italianCuisine.layer.borderColor = UIColor.systemOrange.cgColor
//        americanCuisine.layer.borderWidth = 0.2
//        americanCuisine.layer.borderColor = UIColor.systemOrange.cgColor
        

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

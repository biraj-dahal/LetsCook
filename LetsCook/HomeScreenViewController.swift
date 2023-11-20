//
//  HomeScreenViewController.swift
//  LetsCook
//
//  Created by Biraj Dahal on 11/17/23.
//

import UIKit

class HomeScreenViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Food Number \(indexPath.row)"
        
        return cell
    }
    

    @IBOutlet weak var hsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        hsTableView.dataSource = self

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

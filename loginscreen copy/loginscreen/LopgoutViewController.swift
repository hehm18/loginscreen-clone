//
//  LopgoutViewController.swift
//  loginscreen
//
//  Created by Cepl on 03/06/22.
//

import UIKit

class LopgoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logout3(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "isuserloggedin")
        self.navigationController?.popToRootViewController(animated: true)
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

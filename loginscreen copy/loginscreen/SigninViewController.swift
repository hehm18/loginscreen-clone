//
//  SigninViewController.swift
//  loginscreen
//
//  Created by Cepl on 25/05/22.
//

import UIKit
var header : [String] = ["MOVIES LIST 1","MOVIES  LIST 2","MOVIES LIST 3","MOVIES LIST 4","MOVIES LIST 4"]

class SigninViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let subcell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! newTableViewCell
        subcell.label1.text = header[indexPath.row]
        return subcell
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
  
    
 
   
        
        @IBOutlet weak var tableview: UITableView!
        

    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
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

    @IBAction func logout(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "isuserloggedin")
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
}

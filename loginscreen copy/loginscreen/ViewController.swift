//
//  ViewController.swift
//  loginscreen
//
//  Created by Cepl on 24/05/22.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate {

    @IBAction func passwordchanged(_ sender: Any) {
    }
    @IBOutlet weak var password: UILabel!
    @IBAction func forgotbutton(_ sender: UIButton) {
     
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let viewcontroller = sb.instantiateViewController(withIdentifier: "SecViewController") as? SecViewController{
            self.navigationController?.pushViewController(viewcontroller, animated: false)
        }
    }
    @IBAction func signinbutton(_ sender: UIButton) {
        
        UserDefaults.standard.set(true, forKey: "isuserloggedin")
        
        if let textemailid = self.emailtext.text, textemailid.isEmpty{
            let alert = UIAlertController(title: "Alert", message: "ENTER THE ID", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert,animated: true,completion: {
                return
            })
            
        }else if let textpassword = self.passwordtext.text, textpassword.isEmpty{
            let alert = UIAlertController(title: "Alert", message: "ENTER PASSWORD ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert,animated: true,completion: {
                return
            })
        }
        let email = isValidEmail(testStr: emailtext.text!)
        if email == false{
            showAlert(title: "ERROR", message: "ENTER THE VALID EMAIL")
            emailtext.text = ""
        }

        let sb = UIStoryboard(name: "Main", bundle: nil)
        if let viewcontroller = sb.instantiateViewController(withIdentifier: "SigninViewController") as? SigninViewController{
            self.navigationController?.pushViewController(viewcontroller, animated: false)
        }
       
        
    }
    @IBOutlet weak var passwordtext: UITextField!
    @IBOutlet weak var emailtext: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if UserDefaults.standard.bool(forKey: "isuserloggedin") == true{
            let sb = UIStoryboard(name: "Main", bundle: nil)
            if let viewcontroller = sb.instantiateViewController(withIdentifier: "SigninViewController") as? SigninViewController{
                self.navigationController?.pushViewController(viewcontroller, animated: false)
            }
            
        }
        
        
        emailtext.delegate = self
        passwordtext.delegate = self
        
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.emailtext.resignFirstResponder()
        self.passwordtext.resignFirstResponder()
        return true
    }
    func isValidEmail(testStr:String) -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            
            let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailTest.evaluate(with: testStr)
        }

    func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {(action) in alert.dismiss(animated: true, completion: nil)}))
            self.present(alert, animated: true, completion: nil)
        }



}


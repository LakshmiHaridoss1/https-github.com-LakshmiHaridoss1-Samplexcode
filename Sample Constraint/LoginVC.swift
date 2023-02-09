//
//  LoginVC.swift
//  Sample Constraint
//
//  Created by Lakshmi on 03/01/23.
//

import UIKit

class LoginVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnForgotPwd(_ sender: UIButton){
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "ForgotPwdVC") as? ForgotPwdVC{
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func btnSignup(_ sender: UIButton){
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignupVC") as? SignupVC{
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func loginbut(_ sender: UIButton){
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainpageVC") as? MainpageVC{
            self.navigationController?.pushViewController(vc, animated: true)
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
}

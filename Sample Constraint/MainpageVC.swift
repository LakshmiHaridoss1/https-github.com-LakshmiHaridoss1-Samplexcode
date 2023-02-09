//
//  MainpageVC.swift
//  Sample Constraint
//
//  Created by Lakshmi on 31/01/23.
//

import UIKit

class MainpageVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func btnBack(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true)
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


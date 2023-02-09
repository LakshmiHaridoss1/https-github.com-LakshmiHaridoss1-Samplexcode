//
//  MemInfoViewController.swift
//  Sample Constraint
//
//  Created by Lakshmi on 24/12/22.
//

import UIKit

class MemInfoViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet var tblview: UITableView?
    var memberlist = NSMutableArray()
    var Member1:NSDictionary = ["Name":"Vidhu", "Age":3,"Address":"Puzhuthivakkam"]
    var Member2:NSDictionary = ["Name":"Jithisha","Age":3,"Address":"Puzhuthivakkam"]
    var name3:NSDictionary = ["Name":"lakshmi","Age":31,"Address":"Puzhuthivakkam"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        memberlist = [Member1,Member2,name3]
//        let nib = UINib(nibName: "TableviewcellTableViewCell", bundle: nil)
//        tableView.register(nib, forCellReuseIdentifier: "TableviewcellTableViewCell")
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memberlist.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemTestcell", for: indexPath) as! MemTestcell
       if let details:NSDictionary = memberlist[indexPath.row] as? NSDictionary{
           cell.addresslbl?.text = details.value(forKey: "Address") as? String
           cell.namelbl?.text = details.value(forKey: "Name") as? String
//           cell.agelbl?.text = details.value(forKey: "Age") as! String
           cell.agelbl?.text = String(details.value(forKey: "Age") as! Int)
       }
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
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
class MemTestcell:UITableViewCell{
    @IBOutlet var addresslbl: UILabel?
    @IBOutlet var agelbl: UILabel?
    @IBOutlet var namelbl: UILabel?
}

//
//  Contactdetails.swift
//  Sample Constraint
//
//  Created by Lakshmi on 02/01/23.
//

import UIKit

class Contactdetails: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet var profileTblview: UITableView?
    
    var persondetails = NSMutableArray()

    let Person1: NSDictionary = ["Name": "Vidhyuth", "Designation":"CEO"]
    let Person2: NSDictionary = ["Name": "Jithisha", "Designation":"CEO"]
    let Person3: NSDictionary = ["Name": "Akshi", "Designation":"CEO"]
    let Person4: NSDictionary = ["Name": "Lakshmi", "Designation":"CEO"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        persondetails = [Person1,Person2,Person3,Person4]
    }

    func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persondetails.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath) as! ProfileCell
        if let details:NSDictionary = persondetails[indexPath.row] as? NSDictionary{
            cell.namelbl?.text = details.value(forKey: "Name") as? String
            cell.desiglbl?.text = details.value(forKey: "Designation") as? String
                    }
        return cell

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
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
class ProfileCell: UITableViewCell{
    @IBOutlet var faceimg: UIImageView?
    @IBOutlet var flagimg: UIImageView?
    @IBOutlet var namelbl:UILabel?
    @IBOutlet var desiglbl: UILabel?
}

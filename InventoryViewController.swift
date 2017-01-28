//
//  InventoryViewController.swift
//  FoodOrganiserTwo
//
//  Created by Colman Marcus-Quinn on 28.01.17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit

class InventoryViewController: ViewController {

    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var hideBtn: UIButton!
    
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var daysLeft: UILabel!
    @IBOutlet weak var daysStored: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var eatenOrWasted: UILabel!
    
    var inventoryTable: InventoryTableViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.title = "WinFoods"
        self.navigationItem.title = "WinFoods"
        
        self.hideBtn.layer.cornerRadius = 25
        self.hideBtn.layer.borderColor = UIColor.blue.cgColor

        self.infoView.layer.cornerRadius = 10
        
        self.name.layer.shadowRadius = 10
        self.name.layer.shadowOpacity = 1.0
        
        self.daysLeft.layer.shadowRadius = 10
        self.daysLeft.layer.shadowOpacity = 1.0
        
        self.daysStored.layer.shadowRadius = 10
        self.daysStored.layer.shadowOpacity = 1.0
        
        self.amount.layer.shadowRadius = 10
        self.amount.layer.shadowOpacity = 1.0
        
        self.eatenOrWasted.layer.shadowRadius = 10
        self.eatenOrWasted.layer.shadowOpacity = 1.0
        
        self.infoView.layer.shadowRadius = 10
        self.infoView.layer.shadowOpacity = 1
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "inventory" {
            self.inventoryTable = segue.destination as! InventoryTableViewController
        }
    }
    
    @IBAction func hideView(_ sender: AnyObject) {
        self.infoView.isHidden = true;
    }

}

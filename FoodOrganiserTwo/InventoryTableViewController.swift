//
//  InventoryTableViewController.swift
//  FoodOrganiserTwo
//
//  Created by Colman Marcus-Quinn on 22.01.17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit

class InventoryTableViewController: UITableViewController {

    @IBOutlet weak var infoView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.title = "WinFoods"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath)

        // Configure the cell...
        
        cell.selectionStyle = .none

        return cell
    }
    
    
//    overrid func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
        
//        UIView.animate(withDuration: 0.9, animations: {
//            self.infoView.alpha = 1
//            }, completion: {
//                finished in
//                
//        })
        
//        UIView.animate(withDuration: 2.3) {
//            self.infoView.alpha = 1
//        }
        var parent: InventoryViewController!
        
        parent = self.parent as! InventoryViewController
        
        
        if parent.infoView.isHidden {
            parent.infoView.isHidden = false
            parent.infoView.alpha = 0
            UIView.animate(withDuration: 0.8) {
                parent.infoView.alpha = 1
            }
        }
        
        
    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
////        return "Name | Pieces | Days Stored | Days Remaining | Eaten/Wasted"
//    }
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
//    {
//        let uilbl = UILabel()
//        uilbl.numberOfLines = 0
//        uilbl.lineBreakMode = NSLineBreakMode.byWordWrapping
//        uilbl.text = "\n \n blablabla"
//        uilbl.sizeToFit()
////        uilbl.backgroundColor =  UIColor(patternImage: UIImage(named: "yr-img-name")!)
//        
//        return uilbl
//    }
//    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        
//        let header = view as! UITableViewHeaderFooterView
//        
//        if let textlabel = header.textLabel {
//            textlabel.font = textlabel.font.withSize(15)
//            textlabel.text = "some text2"
//        }
//    }
    
//    func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        if let header = view as? UITableViewHeaderFooterView {
//            header.textLabel!.font = UIFont.systemFont(ofSize: 3.0)
//            header.textLabel!.text = "Name | Pieces | Days Stored | Days Remaining | Eaten/Wasted"
//        }
//    }
    
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let myAttribute = [ NSFontAttributeName: UIFont(name: "Chalkduster", size: 18.0)! ]
//        
    
        
//        navigationController?.navigationBar.titleTextAttributes = [
//            NSForegroundColorAttributeName: UIColor.black,
//            NSFontAttributeName: UIFont(name: "HelveticaNeue-Thin", size: 20)!
//        ]

        
        
//    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

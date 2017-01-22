//
//  LandingTableViewController.swift
//  FoodOrganiserTwo
//
//  Created by Colman Marcus-Quinn on 21.01.17.
//  Copyright © 2017 none. All rights reserved.
//

import UIKit

class LandingTableViewController: UITableViewController {
    
    var records:[Product]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var create = CreateSampleData()
        create.createSomeData()
        records = FoodOrganiserDao.instance.getProducts()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return records.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell
        if(indexPath.row % 2 == 0) {
                 cell = tableView.dequeueReusableCell(withIdentifier: "title", for: indexPath)
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: "special", for: indexPath)
        }
//        let cell = tableView.dequeueReusableCell(withIdentifier: "title", for: indexPath)

        // Configure the cell...

        return cell
    }
    
//    optional public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? // fixed font
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Restock Your Inventory And Save WoW!"
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
 

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

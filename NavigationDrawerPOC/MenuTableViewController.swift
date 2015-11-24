//
//  MenuTableViewController.swift
//  NavigationDrawerPOC
//
//  Created by Prasoon Puri on 11/24/15.
//  Copyright (c) 2015 Prasoon Puri. All rights reserved.
//

import UIKit


class MenuTableViewController: UITableViewController {
    
    @IBOutlet var tableViewObj: UITableView!
    var menuItems = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        menuItems = ["news" , "map" , "calendar"]
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

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return menuItems.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(menuItems[indexPath.row], forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var indexPath : NSIndexPath = self.tableViewObj.indexPathForSelectedRow()!
        
        if(segue.identifier == "map")
        {
           
        } else
        if(segue.identifier == "calendar")
        {
            
        } else
        if(segue.identifier == "news") {
        }
        
        var navigationController : UINavigationController = segue.destinationViewController as! UINavigationController
        
    }
    

}

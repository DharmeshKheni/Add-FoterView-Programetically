//
//  TableViewController.swift
//  layOut testing
//
//  Created by Anil on 04/07/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let tableData = ["1","2","3"]
    override func viewDidLoad() {
        super.viewDidLoad()

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
        return tableData.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...
        cell.textLabel?.text = tableData[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        var footerView : UIView?
        footerView = UIView(frame: CGRectMake(0, 0, tableView.frame.size.width, 50))
        footerView?.backgroundColor = UIColor.blackColor()
        
        let dunamicButton = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        dunamicButton.backgroundColor = UIColor.greenColor()
        dunamicButton.setTitle("Button", forState: UIControlState.Normal)
        dunamicButton.frame = CGRectMake(0, 0, 100, 50)
        dunamicButton.addTarget(self, action: "buttonTouched:", forControlEvents: UIControlEvents.TouchUpInside)
        
        footerView?.addSubview(dunamicButton)
        
        return footerView
    }
    
    func buttonTouched(sender:UIButton!){
        println("diklik")
    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50.0
    }
    
//    override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        var footerView : UIView?
//        footerView = UIView(frame: CGRectMake(0, 0, tableView.frame.size.width, 50))
//        footerView?.backgroundColor = UIColor.blackColor()
//        
//        let dunamicButton = UIButton.buttonWithType(UIButtonType.System) as! UIButton
//        dunamicButton.backgroundColor = UIColor.greenColor()
//        dunamicButton.setTitle("Button", forState: UIControlState.Normal)
//        dunamicButton.frame = CGRectMake(0, 0, 100, 50)
//        dunamicButton.addTarget(self, action: "buttonTouched:", forControlEvents: UIControlEvents.TouchUpInside)
//        
//        footerView?.addSubview(dunamicButton)
//        
//        return footerView
//    }
//    
//    func buttonTouched(sender:UIButton!){
//        println("diklik")
//    }
//    
//    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 50.0
//    }
    

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}

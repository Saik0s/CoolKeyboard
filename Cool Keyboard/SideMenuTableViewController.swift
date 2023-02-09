//
//  SideMenuTableViewController.swift
//  Cool Keyboard
//
//  Created by Igor Tarasenko on 11/16/14.
//  Copyright (c) 2014 Igor Tarasenko. All rights reserved.
//

import UIKit

class SideMenuTableViewController: UITableViewController {
    
    override func viewDidAppear(animated: Bool) {
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = super.tableView(tableView, cellForRowAtIndexPath: indexPath)
        switch (indexPath.row) {
        case 0:
            
            break
        case 1:
            
            break
        default:
            break
        }
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        var cell1:UITableViewCell = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: 1, inSection: 0))!
        var cell2:UITableViewCell = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: 2, inSection: 0))!
        var cell3:UITableViewCell = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: 3, inSection: 0))!
        
        switch (indexPath.row) {
        case 1:
            cell1.textLabel!.font = UIFont.boldSystemFontOfSize(15)
            cell1.textLabel!.textColor = UIColor(red: 2.0/255.0, green: 136.0/255.0, blue: 209.0/255.0, alpha: 0.8)
            cell2.textLabel!.font = UIFont.systemFontOfSize(15)
            cell2.textLabel!.textColor = UIColor(red: 126.0/255.0, green: 126.0/255.0, blue: 126.0/255.0, alpha: 1.0)
            cell3.textLabel!.font = UIFont.systemFontOfSize(15)
            cell3.textLabel!.textColor = UIColor(red: 126.0/255.0, green: 126.0/255.0, blue: 126.0/255.0, alpha: 1.0)
            break
        case 2:
            cell2.textLabel!.font = UIFont.boldSystemFontOfSize(15)
            cell2.textLabel!.textColor = UIColor(red: 2.0/255.0, green: 136.0/255.0, blue: 209.0/255.0, alpha: 0.8)
            cell1.textLabel!.font = UIFont.systemFontOfSize(15)
            cell1.textLabel!.textColor = UIColor(red: 126.0/255.0, green: 126.0/255.0, blue: 126.0/255.0, alpha: 1.0)
            cell3.textLabel!.font = UIFont.systemFontOfSize(15)
            cell3.textLabel!.textColor = UIColor(red: 126.0/255.0, green: 126.0/255.0, blue: 126.0/255.0, alpha: 1.0)
            break
        case 3:
            cell3.textLabel!.font = UIFont.boldSystemFontOfSize(15)
            cell3.textLabel!.textColor = UIColor(red: 2.0/255.0, green: 136.0/255.0, blue: 209.0/255.0, alpha: 0.8)
            cell2.textLabel!.font = UIFont.systemFontOfSize(15)
            cell2.textLabel!.textColor = UIColor(red: 126.0/255.0, green: 126.0/255.0, blue: 126.0/255.0, alpha: 1.0)
            cell1.textLabel!.font = UIFont.systemFontOfSize(15)
            cell1.textLabel!.textColor = UIColor(red: 126.0/255.0, green: 126.0/255.0, blue: 126.0/255.0, alpha: 1.0)
            break
        default:
            break
        }
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

}

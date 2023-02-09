//
//  FontsTableViewController.swift
//  Cool Keyboard
//
//  Created by Igor Tarasenko on 11/16/14.
//  Copyright (c) 2014 Igor Tarasenko. All rights reserved.
//

import UIKit

class FontsTableViewController: UITableViewController {

    @IBOutlet var sidebarButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Iphone
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        var statusBarView:UIView = UIView(frame: CGRectMake(0, -20, UIScreen.mainScreen().bounds.width, 20))
        statusBarView.backgroundColor = UIColor(red: 2 / 255.0, green: 136.0 / 255.0, blue: 209.0 / 255.0, alpha: 1/0)
        self.navigationController?.navigationBar.addSubview(statusBarView)
        
        sidebarButton.target = self.revealViewController()
        sidebarButton.action = Selector("revealToggle:")
        //self.navigationController?.navigationBar.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.revealViewController().panGestureRecognizer()
        self.revealViewController().tapGestureRecognizer()
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
        var curFont:[String] = Fonts[indexPath.row][0][0]
        cell.textLabel!.text = "".join(curFont)
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Fonts.count
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
}

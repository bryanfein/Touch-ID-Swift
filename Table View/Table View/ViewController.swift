//
//  ViewController.swift
//  Table View
//
//  Created by Bryan Fein on 3/9/16.
//  Copyright © 2016 Bryan Fein. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
//    var textArray = ["Bryan","Szilard","Malcome","Steven","Amado","Eddie"]
    var imageArray = ["apple", "motorola", "nokia", "Samsung"]
    var textLabelArray = ["1","2","3","4","5"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
      let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell!
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named: imageArray[indexPath.row])
        
//        cell.textLabel?.text = textArray[indexPath.row]
        let textlabel = cell.viewWithTag(2) as! UILabel
        textlabel.text = textLabelArray[indexPath.row]
        
        return cell
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return imageArray.count
//        return textArray.count
        
    }

}


//
//  ViewController.swift
//  NotePad2
//
//  Created by Shakti Pratap Singh on 19/06/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var viewTableVar: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viewTableVar.dataSource=self
        viewTableVar.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return Note.allNotes().count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let row = indexPath.row
        var cell:UITableViewCell
        let noteAtPassedIndex = Note.allNotes()[row]
        cell = tableView.dequeueReusableCellWithIdentifier("one")!
        cell.textLabel?.text=noteAtPassedIndex.title
        cell.detailTextLabel?.text=noteAtPassedIndex.details
        return cell
    }

}


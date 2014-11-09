//
//  ViewController.swift
//  hw
//
//  Created by nacnud on 11/9/14.
//  Copyright (c) 2014 nacnud. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!

    var students:[Person] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.title = "Student Roster"
        
        let firstNames = ["Blaise", "Liam", "Julia","Robert","Lydia", "Adan"]
        let lastNames = ["Hall", "Hindhal", "Swazo", "Burch", "Teegin", "Parker"]
        for i in 0..<firstNames.count {
            self.students.append(Person(firstName: firstNames[i], lastName: lastNames[i], isStudent: true))
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("CELL", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = students[indexPath.row].fullName()
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DETAIL_SEGUE" {
            let detailViewController = segue.destinationViewController as DetailViewController
            let studentToPass = self.students[self.tableView.indexPathForSelectedRow()!.row]
            detailViewController.detailedPerson = studentToPass
        }
    }


}


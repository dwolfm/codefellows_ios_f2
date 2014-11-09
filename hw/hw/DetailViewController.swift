//
//  DetailViewController.swift
//  hw
//
//  Created by nacnud on 11/9/14.
//  Copyright (c) 2014 nacnud. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detailedPerson:Person?
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let actualPerson = detailedPerson {
            self.title = detailedPerson?.getFirst()
            self.firstNameLabel.text = detailedPerson?.getFirst()
            self.lastNameLabel.text = detailedPerson?.getLast()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

//
//  DetailsViewController.swift
//  HW2.7
//
//  Created by Игорь Зигура on 10.09.2020.
//  Copyright © 2020 Zigura. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = person.phoneNumber
        emailLabel.text = person.email
        navigationItem.title = person.fullName
    }
}

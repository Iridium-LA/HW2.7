//
//  ExtendedTableViewController.swift
//  HW2.7
//
//  Created by Игорь Зигура on 09.09.2020.
//  Copyright © 2020 Zigura. All rights reserved.
//

import UIKit

class ExtendedTableViewController: UITableViewController {
    
    var listOfPersons: [Person] = []
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        listOfPersons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        listOfPersons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            let phoneCell = tableView.dequeueReusableCell(withIdentifier: "phone", for: indexPath)
            let person = listOfPersons[indexPath.section]
            phoneCell.textLabel?.text = person.phoneNumber
            // cell.detailTextLabel?.text = person.email
            //        cell.imageView?.image = UIImage(named: track.track)
            return phoneCell
        } else {
            let emailCell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath)
            let person = listOfPersons[indexPath.section]
            emailCell.textLabel?.text = person.email
            // cell.detailTextLabel?.text = person.email
            //        cell.imageView?.image = UIImage(named: track.track)
            return emailCell
        }
    }
}

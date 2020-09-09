//
//  SimpleTableViewController.swift
//  HW2.7
//
//  Created by Игорь Зигура on 09.09.2020.
//  Copyright © 2020 Zigura. All rights reserved.
//

import UIKit

class SimpleTableViewController: UITableViewController {
    
    let listOfPersons: [Person] = DataManager.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let tabBarController = self.tabBarController, let second = tabBarController.viewControllers?.last as? ExtendedTableViewController {
            _ = second.view
            second.listOfPersons = listOfPersons
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listOfPersons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "simpleContactCell", for: indexPath)
        let person = listOfPersons[indexPath.row]
        cell.textLabel?.text = person.fullName
        return cell
    }   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        detailsVC.person = listOfPersons[indexPath.row]
    }
}

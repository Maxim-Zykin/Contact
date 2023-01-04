//
//  ContactListViewController.swift
//  Contact
//
//  Created by Максим Зыкин on 02.01.2023.
//

import UIKit

class ContactListViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    private(set) var contacts: [String] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newContactVC = segue.destination as! NewContactViewController
        newContactVC.delegate = self
    }
}

extension ContactListViewController: NewContactViewControllerDelegate {
    func saveContact(fullName: String) {
        contacts.append(fullName)
    }
}

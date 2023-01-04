//
//  NewContactViewController.swift
//  Contact
//
//  Created by Максим Зыкин on 02.01.2023.
//

import UIKit

protocol NewContactViewControllerDelegate: AnyObject {
    func saveContact(fullName: String)
}

protocol FullyNameProtocol {
    var fullName: String { get }
}

class NewContactViewController: UIViewController, FullyNameProtocol {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    

    weak var delegate: NewContactViewControllerDelegate?
    
    var fullName: String {
        let person = Person(
            name: firstNameTextField.text ?? "",
            surname: lastNameTextField.text ?? ""
        )
        
        return "\(person.name) \(person.surname)"
    }
    

    @IBAction func doneButton() {
        delegate?.saveContact(fullName: fullName)
        dismiss(animated: true)
    }
    
    
    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true)
    }

}


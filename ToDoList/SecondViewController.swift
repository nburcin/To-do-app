//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Nicholas Burcin on 10/28/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var addTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    @IBAction func addBtnPressed(_ sender: Any) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        var items : [String]
        if let tempItems = itemsObject as? [String] {
            items = tempItems
            items.append(addTextField.text!)
        } else {
            items = [addTextField.text!]
        }
        UserDefaults.standard.set(items, forKey: "items")
        addTextField.text = ""
    }
    
}


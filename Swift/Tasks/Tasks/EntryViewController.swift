//
//  EntryViewController.swift
//  Tasks
//
//  Created by Sherin Hartman on 07/02/25.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {

    //click and save
    @IBOutlet var field: UITextField!
    
    var update : (() -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        navigationItem.rightBarButtonItem = UIBarButtonItem(title : "Save", style: .done, target: self, action: #selector(saveTask))
    }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        saveTask()
        return true
    }
    //@objc allows this function to be used in #selector
    @objc func saveTask() {
        
        guard let text = field.text, !text.isEmpty else{
            return
        }
        //how many tasks
        guard let  count = UserDefaults().value(forKey : "count") as? Int else{
            return
        }
        let newCount = count + 1
        UserDefaults().set(newCount, forKey: "count")
        UserDefaults().set(text, forKey: "task_\(newCount)")
        update?()
        navigationController?.popViewController(animated: true)
    }
    }



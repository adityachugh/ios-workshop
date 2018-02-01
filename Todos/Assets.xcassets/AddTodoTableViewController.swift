//
//  AddTodoTableViewController.swift
//  Todos
//
//  Created by Aditya Chugh on 2018-02-01.
//  Copyright © 2018 TEAM STUDY. All rights reserved.
//

import UIKit

class AddTodoTableViewController: UITableViewController {

    var delegate: AddTodoTableViewControllerDelegate?
    @IBOutlet weak var titleInput: UITextField!
    @IBOutlet weak var dateInput: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        delegate?.saveTodo(todo: Todo(title: titleInput.text!, date: dateInput.date))
        dismiss(animated: true, completion: nil);
    }
    
    @IBAction func cancelButtonTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil);
    }
}

protocol AddTodoTableViewControllerDelegate {
    func saveTodo(todo: Todo);
}

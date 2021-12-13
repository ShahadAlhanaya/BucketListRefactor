//
//  AddItemTableViewController.swift
//  BucketListRefactor
//
//  Created by Shahad Nasser on 13/12/2021.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    @IBOutlet weak var textField: UITextField!
    
    var text: String?
    var indexPath: NSIndexPath?
    
    weak var delegate: AddItemTableViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = text
        
    }

    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.addItem(by: self, with: textField.text!, at: indexPath)

    }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    
    
}

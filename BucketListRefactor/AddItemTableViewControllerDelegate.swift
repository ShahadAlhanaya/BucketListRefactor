//
//  AddItemTableViewControllerDelegate.swift
//  BucketListRefactor
//
//  Created by Shahad Nasser on 13/12/2021.
//

import Foundation

protocol AddItemTableViewControllerDelegate: AnyObject{
    func addItem(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
    func cancelButtonPressed(by controller: AddItemTableViewController)
}

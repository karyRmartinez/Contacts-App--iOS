//
//  ContactsTableViewController.swift
//  contacts app
//
//  Created by Kary Martinez on 11/5/20.
//  Copyright © 2020 Kary Martinez. All rights reserved.
//

import UIKit

class ContactsTableViewController: UIViewController {
    
    @IBOutlet weak var contactsTableView: UITableView!
    
    var contactList = [Contact]() {
        
        didSet {
            contactsTableView.reloadData()
        }
    }
    
  private func loadData() {
    contactList = Contact.getContacts()
   }
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        contactsTableView.delegate = self
        contactsTableView.dataSource = self
        
        
    }

}

extension ContactsTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contactsTableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! ContactsTableViewCell
        let currentContact = contactList[indexPath.row]
        
        cell.NamesOfContacts.text = currentContact.firstName
        return cell
    }
  
    
}

extension ContactsTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 164
    }
    
}


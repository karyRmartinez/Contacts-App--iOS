//
//  ContactsTableViewCell.swift
//  contacts app
//
//  Created by Kary Martinez on 11/9/20.
//  Copyright © 2020 Kary Martinez. All rights reserved.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {

    @IBOutlet weak var NamesOfContacts: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

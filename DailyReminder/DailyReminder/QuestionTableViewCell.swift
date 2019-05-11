//
//  QuestionTableViewCell.swift
//  DailyReminder
//
//  Created by Michael Charland on 2019-04-14.
//  Copyright © 2019 charland. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    static let reuseIdentifier = "QTVC"

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var lastSeenLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

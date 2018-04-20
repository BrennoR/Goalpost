//
//  GoalCell.swift
//  Goalpost
//
//  Created by Brenno Ribeiro on 4/19/18.
//  Copyright © 2018 Brenno Ribeiro. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    func configureCell(description: String, type: GoalType, goalProgressAmount: Int) {
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl.text = type.rawValue
        self.goalProgressLbl.text = String(describing: goalProgressAmount)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

//
//  FinishGoalVC.swift
//  Goalpost
//
//  Created by Brenno Ribeiro on 4/20/18.
//  Copyright © 2018 Brenno Ribeiro. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    // Outlets
    @IBOutlet weak var createGoalBtn: KeyboardAdjustableButton!
    @IBOutlet weak var pointsTxtField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTxtField.delegate = self
    }

    
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        
    }
    
}

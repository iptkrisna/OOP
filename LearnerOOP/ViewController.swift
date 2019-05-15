//
//  ViewController.swift
//  LearnerOOP
//
//  Created by I Putu Krisna on 15/05/19.
//  Copyright © 2019 I Putu Krisna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    var learnerInstance: LearnerModel?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        learnerInstance = LearnerModel(nameLearner: "Krisna", ageLearner: 17, genderLearner: "Men", imageProfileLearner: "")
        
        updateUI()
        
    }
    
    func updateUI() {
        
        if let instance = learnerInstance {
            nameLabel.text = instance.name
            ageLabel.text = "\(instance.age)"
            genderLabel.text = instance.gender
        }
        
    }

    @IBAction func increaseAgeButton(_ sender: UIButton) {
        
        learnerInstance?.increaseAge()
        updateUI()
        
    }
    
}


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
    
//    var learnerInstance: LearnerModel?
    var facilitatorInstance: FacilitatorModel?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
//        learnerInstance = LearnerModel(nameLearner: "Krisna", ageLearner: 17, genderLearner: "Men", imageProfileLearner: "")
        facilitatorInstance = FacilitatorModel(nameFacil: "Krisna", ageFacil: 17, genderFacil: "Male", imageProfileFacil: "", perkFacil: "Unlimited")
        
        updateUI()
        
    }
    
    func updateUI() {
        
        if let instance = facilitatorInstance {
            nameLabel.text = instance.name
            ageLabel.text = "\(instance.age)"
            genderLabel.text = instance.gender
            facilitatorInstance?.coachMentee()
        }
        
    }

    @IBAction func increaseAgeButton(_ sender: UIButton) {
        
        facilitatorInstance?.increaseAge()
        updateUI()
        UIView.animate(withDuration: 3) {
            <#code#>
        }
        
    }
    
    
    
}



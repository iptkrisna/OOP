//
//  FacilitatorModel.swift
//  LearnerOOP
//
//  Created by I Putu Krisna on 15/05/19.
//  Copyright © 2019 I Putu Krisna. All rights reserved.
//

import Foundation

class FacilitatorModel: LearnerModel {
    
    var perk: String
    
    init(nameFacil: String, ageFacil: Int, genderFacil: String, imageProfileFacil: String, perkFacil: String) {
        perk = perkFacil
        super.init(nameLearner: nameFacil, ageLearner: ageFacil, genderLearner: genderFacil, imageProfileLearner: imageProfileFacil)
    }
    
    func coachMentee() {
        
        print("Coaching...")
        
    }
    
}

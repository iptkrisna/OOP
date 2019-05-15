//
//  BottleModel.swift
//  LearnerOOP
//
//  Created by I Putu Krisna on 15/05/19.
//  Copyright © 2019 I Putu Krisna. All rights reserved.
//

import Foundation

class BottleModel {
    
    var brand: String
    var body: String
    var height: Int
    var waterVolume: Int
    var radius: Int
    
    init(brandBottle: String, bodyBottle: String, heightBottle: Int, waterVolumeBottle: Int, radiusBottle: Int) {
        
        self.brand = brandBottle
        self.body = bodyBottle
        self.height = heightBottle
        self.waterVolume = waterVolumeBottle
        self.radius = radiusBottle
        
    }
    
    func increaseWaterVolume() {
        
        self.waterVolume += 1
        
    }
    
}

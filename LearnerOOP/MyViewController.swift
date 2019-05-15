//
//  MyViewController.swift
//  LearnerOOP
//
//  Created by I Putu Krisna on 15/05/19.
//  Copyright © 2019 I Putu Krisna. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var waterVolumeLabel: UILabel!
    @IBOutlet weak var radiusLabel: UILabel!
    var bottleInstance: BottleModel?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        bottleInstance = BottleModel(brandBottle: "Aqua", bodyBottle: "Plastic", heightBottle: 30, waterVolumeBottle: 20, radiusBottle: 4)
        
        updateUI()
        
    }
    
    func updateUI() {
        
        if let instance = bottleInstance {
            self.brandLabel.text = instance.brand
            self.heightLabel.text = "\(instance.height) cm"
            self.waterVolumeLabel.text = "\(instance.waterVolume) ml"
            self.radiusLabel.text = "\(instance.radius) cm"
        }
        
    }

    @IBAction func increaseWaterVolumeTapped(_ sender: UIButton) {
        
        bottleInstance?.increaseWaterVolume()
        updateUI()
        
    }
}

//
//  ResultViewController.swift
//  BMI Learn
//
//  Created by Admin on 17/7/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiValue: UILabel!
    var height: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValue.text=height
    }


}

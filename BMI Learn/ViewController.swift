//
//  ViewController.swift
//  BMI Learn
//
//  Created by Admin on 17/7/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var bmiValue: String?
    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var txtView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: UIButton) {
        txtView.text =  height.text
        bmiValue=height.text
    performSegue(withIdentifier: "goToResult", sender: self)
    }
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "goToResult" {
             let destinationVC = segue.destination as! ResultViewController
             destinationVC.height = bmiValue
        
         }
     }
    
}


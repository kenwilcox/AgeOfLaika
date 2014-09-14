//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Kenneth Wilcox on 9/13/14.
//  Copyright (c) 2014 Kenneth Wilcox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var humanAgeTextField: UITextField!
  @IBOutlet weak var dogAgeLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func convertButtonPressed(sender: AnyObject) {
    let humanAge = humanAgeTextField.text.toInt().or(0)
    var dogYears:Double
    // Dog years = 10.5 for the first two years
    // then four years for each year after
    if (humanAge >= 2) {
      dogYears = ((Double(humanAge) - 2) * 4) + 21
    } else {
      dogYears = Double(humanAge) * 10.5
    }
    
    dogAgeLabel.text = "\(humanAge) human years is \(dogYears) dog years."
    dogAgeLabel.hidden = false
    humanAgeTextField.resignFirstResponder()
  }

}


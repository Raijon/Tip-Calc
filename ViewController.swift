//
//  ViewController.swift
//  tpster
//
//  Created by Raijon Wilson on 11/30/16.
//  Copyright © 2016 HR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipCon: UISegmentedControl!
    @IBOutlet weak var billfield: UITextField!
    @IBOutlet weak var totLabel: UILabel!
    @IBOutlet weak var tiplabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func ontap(_ sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calcNew(_ sender: AnyObject) {
        let tipPercentages = [0.18,0.2,0.25]
        let tipPer = tipPercentages[tipCon.selectedSegmentIndex]
        let bill = Double(billfield.text!) ?? 0
        let tip = bill * tipPer
        tiplabel.text = String(format: "$%.2f",tip)
        totLabel.text = String(format: "$%.2f", tip + bill )
        
    }

    
    
    
    
    
}


//
//  ViewController.swift
//  Tipster
//
//  Created by Jihun Kang on 1/10/18.
//  Copyright © 2018 Jihun Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var subtotalLabel: UILabel!
    @IBOutlet weak var lowTip: UILabel!
    @IBOutlet weak var midTip: UILabel!
    @IBOutlet weak var highTip: UILabel!
    @IBOutlet weak var totalLowTip: UILabel!
    @IBOutlet weak var totalMidTip: UILabel!
    @IBOutlet weak var totalHighTip: UILabel!
    @IBOutlet weak var lowTotal: UILabel!
    @IBOutlet weak var midTotal: UILabel!
    @IBOutlet weak var highTotal: UILabel!
    @IBOutlet weak var groupSizeDisplay: UILabel!
    @IBOutlet weak var GroupSizeNumber: UISlider!
    @IBOutlet weak var tipPercentageValue: UISlider!
    
    var subtotal = ""
    var lowTipValue = 0.05
    var midTipValue = 0.10
    var highTipValue = 0.15
    
    @IBAction func oneButton(_ sender: UIButton) {
        subtotal += "1"
        subtotalLabel.text = subtotal
    }
    @IBAction func twoButton(_ sender: UIButton) {
        subtotal += "2"
        subtotalLabel.text = subtotal
    }
    @IBAction func threeButton(_ sender: UIButton) {
        subtotal += "3"
        subtotalLabel.text = subtotal
    }
    @IBAction func fourButton(_ sender: UIButton) {
        subtotal += "4"
        subtotalLabel.text = subtotal
    }
    @IBAction func fiveButton(_ sender: UIButton) {
        subtotal += "5"
        subtotalLabel.text = subtotal
    }
    @IBAction func sixButton(_ sender: UIButton) {
        subtotal += "6"
        subtotalLabel.text = subtotal
    }
    @IBAction func sevenButton(_ sender: UIButton) {
        subtotal += "7"
        subtotalLabel.text = subtotal
    }
    @IBAction func eightButton(_ sender: UIButton) {
        subtotal += "8"
        subtotalLabel.text = subtotal
    }
    @IBAction func nineButton(_ sender: UIButton) {
        subtotal += "9"
        subtotalLabel.text = subtotal
    }
    @IBAction func zeroButton(_ sender: UIButton) {
        if subtotal != "" {
            subtotal += "0"
            subtotalLabel.text = subtotal
        }
    }
    @IBAction func dotButton(_ sender: UIButton) {
        if subtotal == "" {
            subtotal += "0"
        }
        subtotal += "."
        subtotalLabel.text = subtotal
    }
    @IBAction func clearButton(_ sender: UIButton) {
        subtotal = ""
        subtotalLabel.text = subtotal
    }
   
    @IBAction func tipPercentage(_ sender: UISlider) {
        lowTipValue = (Double(tipPercentageValue.value) - 0.05)*100
        midTipValue = Double(tipPercentageValue.value)*100
        highTipValue = (Double(tipPercentageValue.value) + 0.05)*100
        lowTip.text = String(Int(lowTipValue)) + "%"
        midTip.text = String(Int(midTipValue)) + "%"
        highTip.text = String(Int(highTipValue)) + "%"
    }
    @IBAction func groupSize(_ sender: UISlider) {
        groupSizeDisplay.text = String(Int(GroupSizeNumber.value))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subtotalLabel.text = subtotal
    }
    
    func updateUI() {
//        var tlt = Double(subtotal) * lowTipValue
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}


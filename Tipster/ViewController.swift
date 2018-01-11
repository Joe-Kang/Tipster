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
    
    var subtotal = "0"
    var lowTipValue: Float = 0.05
    var midTipValue: Float = 0.10
    var highTipValue: Float = 0.15
    var groupSize: Float = 1.0
    
    func checkSubtotal(x: String) {
        if subtotal == "0" {
            subtotal = x
        } else {
            subtotal += x
        }
    }
    
    func checkDecimal() {
        for i in subtotal {
            if i == "." {
                
            }
        }
    }
    
    @IBAction func oneButton(_ sender: UIButton) {
        checkSubtotal(x:"1")
        subtotalLabel.text = subtotal
        updateUI()
    }
    @IBAction func twoButton(_ sender: UIButton) {
        checkSubtotal(x:"2")
        subtotalLabel.text = subtotal
        updateUI()
    }
    @IBAction func threeButton(_ sender: UIButton) {
        checkSubtotal(x:"3")
        subtotalLabel.text = subtotal
        updateUI()
    }
    @IBAction func fourButton(_ sender: UIButton) {
        checkSubtotal(x:"4")
        subtotalLabel.text = subtotal
        updateUI()
    }
    @IBAction func fiveButton(_ sender: UIButton) {
        checkSubtotal(x:"5")
        subtotalLabel.text = subtotal
        updateUI()
    }
    @IBAction func sixButton(_ sender: UIButton) {
        checkSubtotal(x:"6")
        subtotalLabel.text = subtotal
        updateUI()
    }
    @IBAction func sevenButton(_ sender: UIButton) {
        checkSubtotal(x:"7")
        subtotalLabel.text = subtotal
        updateUI()
    }
    @IBAction func eightButton(_ sender: UIButton) {
        checkSubtotal(x:"8")
        subtotalLabel.text = subtotal
        updateUI()
    }
    @IBAction func nineButton(_ sender: UIButton) {
        checkSubtotal(x:"9")
        subtotalLabel.text = subtotal
        updateUI()
    }
    @IBAction func zeroButton(_ sender: UIButton) {
        if subtotal != "" {
            subtotal += "0"
            subtotalLabel.text = subtotal
            updateUI()
        }
    }
    @IBAction func dotButton(_ sender: UIButton) {
        if subtotal == "" {
            subtotal += "0"
        }
        subtotal += "."
        subtotalLabel.text = subtotal
        updateUI()
    }
    @IBAction func clearButton(_ sender: UIButton) {
        subtotal = "0"
        subtotalLabel.text = subtotal
        updateUI()
    }
   
    @IBAction func tipPercentage(_ sender: UISlider) {
        lowTipValue = sender.value - 0.05
        midTipValue = sender.value
        highTipValue = sender.value + 0.05
        updateUI()
    }
    @IBAction func groupSize(_ sender: UISlider) {
        groupSize = round(sender.value)
        groupSizeDisplay.text = String(Int(groupSize))
        updateUI()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        totalLowTip.text = String(round(lowTipValue * Float(subtotal)! / groupSize * 100) / 100)
        lowTotal.text = String(round((lowTipValue * Float(subtotal)! + Float(subtotal)!) / groupSize * 100) / 100)
        totalMidTip.text = String(round(midTipValue * Float(subtotal)! / groupSize * 100) / 100)
        midTotal.text = String(round((midTipValue * Float(subtotal)! + Float(subtotal)!) / groupSize * 100) / 100)
        totalHighTip.text = String(round(highTipValue * Float(subtotal)! / groupSize * 100) / 100)
        highTotal.text = String(round((highTipValue * Float(subtotal)! + Float(subtotal)!) / groupSize * 100) / 100)
        lowTip.text = String(Int(lowTipValue*100)) + "%"
        midTip.text = String(Int(midTipValue*100)) + "%"
        highTip.text = String(Int(highTipValue*100)) + "%"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}


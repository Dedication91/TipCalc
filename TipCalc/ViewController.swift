//
//  ViewController.swift
//  TipCalc
//
//  Created by Shaan Mirchandani
//  Copyright © 2016 Shaan Mirchandani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTitleLabel: UILabel!
    @IBOutlet weak var txtCostText: UITextField!
    @IBOutlet weak var lblSliderValueLabel: UILabel!
    @IBOutlet weak var sldTipAmountSlider: UISlider!
    @IBOutlet weak var btnCalculateButton: UIButton!
    @IBOutlet weak var lblTotalCostLabel: UILabel!

    var totalCost: Double?
    var tipAmnt: Double?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func chooseSliderActnVal(_ sender: UISlider) {
        tipAmnt = Double(sldTipAmountSlider.value)
        lblSliderValueLabel.text = String(format: "%0.2f", tipAmnt!)
   
    
    }
    
    
    @IBAction func prssCalcBtn(_ sender: UIButton) {
        if (!(txtCostText.text?.isEmpty)!) {
        var cost = Double(txtCostText.text!)
        calculateTotal(cost: cost!)
        showCost()
        } else {
            lblTitleLabel.text = "Enter a number"
        }
        txtCostText.text?.removeAll()
}
    func calculateTotal(cost: Double) {
        var tip = (tipAmnt! / 100) * cost
        totalCost = tip + cost
  
    }
   
    func showCost(){
        lblTotalCostLabel.text = String(format: "%0.2f", totalCost!)
        lblTitleLabel.text = "Enter cost and tip amount"

    }

}


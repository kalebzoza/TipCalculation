//
//  ViewController.swift
//  TipCalculator
//
//  Created by Kaleb  Carrizoza on 10/12/20.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var fifteenPercentButton: CalcButton!
    @IBOutlet weak var tenPercentButton: CalcButton!
    @IBOutlet weak var twentyPercentButton: CalcButton!
    @IBOutlet weak var billAmountTextField: calcTextField!
    @IBOutlet weak var calculateTipButton: UIButton!
    @IBOutlet weak var amountLabel: UILabel!
    
    var tipPercent: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tenPercentButton.addTarget(self, action: #selector(tipButtonTapped), for: .touchUpInside)
        fifteenPercentButton.addTarget(self, action: #selector(tipButtonTapped), for: .touchUpInside)
        twentyPercentButton.addTarget(self, action: #selector(tipButtonTapped), for: .touchUpInside)
        
        setupView()

    }
    
    private func setupView() {
        view.backgroundColor = .backgroundColor()
        calculateTipButton.backgroundColor = .primaryColor()
        calculateTipButton.setTitleColor(.white, for: .normal)
    }
    
    @objc func tipButtonTapped(sender: CalcButton) {
        let buttons = [tenPercentButton,fifteenPercentButton, twentyPercentButton]
        
        for button in buttons {
            button?.toggleButton(selected: false)
        }
        
        sender.toggleButton(selected: true)
        
        switch sender {
        case tenPercentButton:
            tipPercent = 0.1
        case fifteenPercentButton:
            tipPercent = 0.15
        case twentyPercentButton:
            tipPercent = 0.2
        default: tipPercent = 0.0
        }
    }
    
    @IBAction func calculateButtonTapped(_ sender: Any) {
        guard let amountString = billAmountTextField.text, !amountString.isEmpty else { return }
        guard let amount = Double(amountString) else { return }
        
        if tipPercent > 0 {
            let tipAmount = amount * tipPercent
            let total = amount + tipAmount
            let finalTip = String(format: "%.2f", tipAmount)
            let finalTotal = String(format: "%.2f", total)
            
            amountLabel.text = "Tip: \(finalTip) \n\nTotal: \(finalTotal)"
        }
    }
}//end of class

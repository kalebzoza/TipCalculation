//
//  CalcTextField.swift
//  TipCalculator
//
//  Created by Kaleb  Carrizoza on 10/12/20.
//

import UIKit


class calcTextField:UITextField {
    
    override func awakeFromNib() {
        setupView()
    }
    
    
    private func setupView() {
        backgroundColor = .secondaryColor()
        textColor = .white
        
        layer.masksToBounds = true
        layer.cornerRadius = 4
        layer.borderWidth = 1
        layer.borderColor = UIColor.primaryColor().cgColor
    }
    
    
}

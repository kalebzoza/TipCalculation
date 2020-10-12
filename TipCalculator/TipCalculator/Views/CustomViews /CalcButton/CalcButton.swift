//
//  CalcButton.swift
//  TipCalculator
//
//  Created by Kaleb  Carrizoza on 10/12/20.
//

import UIKit


class CalcButton: UIButton {
    
    override func awakeFromNib() {
        setUpView()
    }
    
    func setUpView() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = frame.height / 2
        
        backgroundColor = .secondaryColor()
        self.setTitleColor(.white, for: .selected)
        self.setTitleColor(.primaryColor(), for: .normal)
        
    }
    
    func toggleButton(selected:Bool) {
        isSelected = selected
        
        if isSelected {
            backgroundColor = .primaryColor()
        }else {
            backgroundColor = .secondaryColor()
        }
    }
}//end of class

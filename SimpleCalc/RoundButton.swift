//
//  RoundButton.swift
//  SimpleCalc
//
//  Created by Radhika Chilukuri on 30/12/21.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    
    @IBInspectable var roundButton:Bool = false {
    
    //@IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            if roundButton {
                print(frame.height/2)
                layer.cornerRadius = frame.height / 2
                
                
            }
            }
        }
    override func prepareForInterfaceBuilder() {
        if roundButton {
            layer.cornerRadius = frame.height / 2
            
        }
    }
}

/*@IBDesignable class MyButton: UIButton
{
    override func layoutSubviews() {
        super.layoutSubviews()

        updateCornerRadius()
    }

    @IBInspectable var rounded: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }

    func updateCornerRadius() {
        //layer.cornerRadius = rounded ? frame.size.height / 2 : 0
        layer.cornerRadius = 35
        layer.masksToBounds = true
    }
}*/

/*@IBDesignable
class RoundBtn: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        
        didSet {
            
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
            }
    }
}*/



    

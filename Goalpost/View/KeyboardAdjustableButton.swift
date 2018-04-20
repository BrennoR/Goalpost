//
//  KeyboardAdjustableButton.swift
//  Goalpost
//
//  Created by Brenno Ribeiro on 4/20/18.
//  Copyright © 2018 Brenno Ribeiro. All rights reserved.
//

import UIKit

class KeyboardAdjustableButton: UIButton {

        private var initialFrame: CGRect = .zero
        
        func bindToKeyboard() {
            initialFrame = frame
            NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(_:)), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
        }
        
        @objc func keyboardWillChange(_ notification: NSNotification) {
            let duration = notification.userInfo![UIKeyboardAnimationDurationUserInfoKey] as! Double
            let curve = notification.userInfo![UIKeyboardAnimationCurveUserInfoKey] as! UInt
            let endingFrame = (notification.userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
            
            UIView.animateKeyframes(withDuration: duration, delay: 0.0, options: UIViewKeyframeAnimationOptions(rawValue: curve), animations: {
                self.frame.origin.y = self.initialFrame.origin.y - endingFrame.height
            }, completion: nil)
        }

}

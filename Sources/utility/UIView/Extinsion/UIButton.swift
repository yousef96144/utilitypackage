//
//  File.swift
//  
//
//  Created by yousef Elaidy on 12/03/2024.
//

import Foundation
import UIKit
extension UIButton {
    
    @IBInspectable public var setRadius: CGFloat{
        get {
            return CGFloat(self.layer.cornerRadius)
        }set {
            self.layer.cornerRadius = CGFloat(newValue)
        }
    }
    
    @IBInspectable public var buttoncolor: UIColor{
        get {
            if let color = self.backgroundColor{
                return color
            }
            else{
                return .white
            }
        }
        set {
            self.backgroundColor = newValue
        }
    }
    
    @IBInspectable public var textcolor: UIColor{
        get {
            if let color = self.tintColor{
                return color
            }
            else{
                return .white
            }
        }
        set {
            self.tintColor = newValue
        }
    }
    
    @IBInspectable public var titleFont: UIFont? {
        get { return titleLabel?.font }
        set { titleLabel?.font = newValue }
    }
    @IBInspectable public var titleShadowColor: UIColor? {
        get { return self.titleShadowColor(for: .normal) }
        set {
            setTitleShadowColor(newValue, for: .normal)
        }
    }
    @IBInspectable public var setBackgroundImage: UIImage?{
        get {
            return self.backgroundImage(for: .normal)
        }
        set {
            let image = newValue?.withRenderingMode(.alwaysOriginal)

            setBackgroundImage(image, for: .normal)
        }
    }
}

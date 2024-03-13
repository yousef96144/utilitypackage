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
    public func btncolor(color: UIColor){
        self.backgroundColor = color
    }
    public func btntintcolor(tintcolor: UIColor){
        self.tintColor = tintcolor
    }
    
}

//
//  File.swift
//  
//
//  Created by yousef Elaidy on 12/03/2024.
//

import Foundation
import UIKit

extension UIView{
    
    @IBInspectable var cornerRadius: Double {
         get {
           return Double(self.layer.cornerRadius)
         }set {
           self.layer.cornerRadius = CGFloat(newValue)
         }
    }
    @IBInspectable var borderWidth: Double {
          get {
            return Double(self.layer.borderWidth)
          }
          set {
           self.layer.borderWidth = CGFloat(newValue)
          }
    }
    @IBInspectable var borderColor: UIColor? {
         get {
            return UIColor(cgColor: self.layer.borderColor!)
         }
         set {
            self.layer.borderColor = newValue?.cgColor
         }
    }
    @IBInspectable var shadowview: UIColor? {
        get {
           return UIColor(cgColor: self.layer.shadowColor!)
        }
        set {
           self.layer.shadowColor = newValue?.cgColor
        }
    }
    @IBInspectable var shadowOpacity: Float {
        get {
           return self.layer.shadowOpacity
        }
        set {
           self.layer.shadowOpacity = newValue
       }
    }
//    public var width:CGFloat{
//        return frame.size.width
//    }
//    public var height:CGFloat{
//        return frame.size.height
//    }
//    public var top:CGFloat{
//        return frame.origin.y
//    }
//    public var bottom:CGFloat{
//        return frame.origin.y+frame.size.height
//    }
//    public var right:CGFloat{
//        return frame.origin.x+frame.size.width
//    }
//    public var left:CGFloat{
//        return frame.origin.x
//    }
    
    
}

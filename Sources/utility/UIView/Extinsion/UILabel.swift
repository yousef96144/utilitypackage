//
//  File.swift
//  
//
//  Created by yousef Elaidy on 12/03/2024.
//

import Foundation
import UIKit
extension UILabel {
   
    @IBInspectable public var labelText: String?{
        get{
            return self.text
        }
        set{
            self.text = newValue
        }
    }
    
    @IBInspectable public var textFont: UIFont?{
        
        get {
            return self.font
        }
        set {
            self.font = newValue
        }
    }
    
    @IBInspectable public var adjustFontSize: Bool{
        get{
            return self.adjustsFontSizeToFitWidth
        }
        set{
            self.adjustsFontSizeToFitWidth = newValue
        }
    }
    
    @IBInspectable public  var textshadow: UIColor?{
        get{
            return self.shadowColor
        }
        set{
            self.shadowColor = newValue
        }
    }
    @IBInspectable public var shadowOffset: CGSize{
        get{
            return self.shadowOffset
        }
        set{
            self.shadowOffset = newValue
        }
    }
}

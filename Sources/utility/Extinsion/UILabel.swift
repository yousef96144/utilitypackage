//
//  File.swift
//  
//
//  Created by yousef Elaidy on 12/03/2024.
//

import Foundation
import UIKit
extension UILabel {
   public func setAccessibility(fontSize : UIFont.TextStyle) {
        self.font = .preferredFont(forTextStyle: fontSize)
    }
}

//
//  File.swift
//  
//
//  Created by yousef Elaidy on 12/03/2024.
//

import Foundation
import UIKit


    extension UIScrollView {

        @IBInspectable public var paging: Bool{
             get{
                 return self.isPagingEnabled
             }
             set{
                 self.isPagingEnabled = newValue
             }
         }
        @IBInspectable public var contentsize: CGSize{
             get{
                 return self.contentSize
             }
             set {
                 self.contentSize = newValue
             }
         }
       @IBInspectable  public var scrolldelegate: UIScrollViewDelegate?{
             get{
                 return self.delegate
             }
             set {
                 self.delegate = newValue
             }
         }
         
      
        public var isAtTop: Bool {
             get { return self.contentOffset.y == 0.0 ? true : false }
         }
        public var isAtBottom: Bool {
               get {
                   let bottomOffset = self.contentSize.height - self.bounds.size.height
                   return self.contentOffset.y == bottomOffset ? true : false
               }
           }
        func scrolltoview(view:UIView, animated: Bool) {
            if let origin = view.superview {
                let childStartPoint = origin.convert(view.frame.origin, to: self)
               
                self.scrollRectToVisible(CGRect(x:0, y:childStartPoint.y,width: 1,height: self.frame.height), animated: animated)
            }
        }

        func scrolltotop(animated: Bool) {
            let topOffset = CGPoint(x: 0, y: -contentInset.top)
            setContentOffset(topOffset, animated: animated)
        }

        func scrolltobottom() {
            let bottomOffset = CGPoint(x: 0, y: contentSize.height - bounds.size.height + contentInset.bottom)
            if(bottomOffset.y > 0) {
                setContentOffset(bottomOffset, animated: true)
            }
        }
        
        public func scrollToTopAnimated(_ animated: Bool) {
            if !self.isAtTop {
                let bottomOffset = CGPoint.zero;
                self.setContentOffset(bottomOffset, animated: animated)
            }
        }
    }
    


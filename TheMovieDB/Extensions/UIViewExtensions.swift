//
//  UIViewExtensions.swift
//  TheMovieDB
//
//  Created by Talha Batuhan Irmalı on 5.02.2023.
//

import Foundation
import UIKit

extension UIView {
    func round(_ radius: CGFloat = 10) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    func addBorder(color: UIColor, width: CGFloat) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        get { return self.cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable var cornerRadius2: CGFloat {

     get{
          return layer.cornerRadius
      }
      set {
          layer.cornerRadius = newValue
          layer.masksToBounds = newValue > 0
      }
    }

    @IBInspectable var borderWidth: CGFloat {
      get {
          return layer.borderWidth
      }
      set {
          layer.borderWidth = newValue
      }
    }

    @IBInspectable var borderColor: UIColor? {
      get {
          return UIColor(cgColor: layer.borderColor!)
      }
      set {
          layer.borderColor = newValue?.cgColor
      }
    }
    
    
}

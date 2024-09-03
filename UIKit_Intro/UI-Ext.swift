//
//  UI-Ext.swift
//  UIKit_Intro
//
//  Created by Sovit Thapa on 2024-08-29.
//

import UIKit

extension UIColor{
    static func random() -> UIColor{
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: CGFloat.random(in: 0...1))
        return randomColor    }

}


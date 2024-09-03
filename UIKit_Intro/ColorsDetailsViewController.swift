//
//  ColorsDetailsViewController.swift
//  UIKit_Intro
//
//  Created by Sovit Thapa on 2024-08-29.
//

import UIKit

class ColorsDetailsViewController: UIViewController {
    
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? .blue
        // Do any additional setup after loading the view.
    }
    

}

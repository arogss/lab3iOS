//
//  WalkthroughVC.swift
//  Lab3
//
//  Created by Samuel Arogundade on 2020-02-04.
//  Copyright © 2020 Samuel Arogundade. All rights reserved.
//

import Foundation
import UIKit

/*
 MARK: - This class is used to walkthrough the sign up process
 */

class WalkthroughVC : UIViewController {
    
    var button : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .orange
        
        
        
//        button = UIButton(frame: CGRect(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2, width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 16))
        
        button = UIButton(type: .roundedRect)
        self.view.addSubview(button!)
        
        button?.translatesAutoresizingMaskIntoConstraints = false
        button?.centerYAnchor.constraint(equalToSystemSpacingBelow: self.view.centerYAnchor, multiplier: 1.0).isActive = true
        button?.centerXAnchor.constraint(equalToSystemSpacingAfter: self.view.centerXAnchor, multiplier: 1.0).isActive = true
        button?.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        button?.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
        
        
        button?.frame.origin = CGPoint(x: (button?.frame.width)! / 2, y: (button?.frame.height)! / 2)
        
        button?.backgroundColor = .green
        
        //button?.center = view.center
        
        //button?.imageView?.image = UIImage(named: <#T##String#>)
        
        button?.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        
        
    }
    
    @objc func buttonPressed(){
        //print("This button was touched!!!!")
        
        var name : String = "Samuel"
        print("My name is \(name)")
    }
}

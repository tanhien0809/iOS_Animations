//
//  ViewController.swift
//  Animations
//
//  Created by Brian Advent on 07/10/2016.
//  Copyright © 2016 Brian Advent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var button2: NSLayoutConstraint!
    
    @IBOutlet weak var button1: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        button1.constant -= view.bounds.width
        button2.constant -= view.bounds.width
    }
    
    var animationPerformedOnce = false
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if !animationPerformedOnce
        {
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
                self.button1.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
                self.button2.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            animationPerformedOnce = true
        }
    }

       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


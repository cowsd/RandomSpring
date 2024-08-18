//
//  ViewController.swift
//  RandomSpring
//
//  Created by Alex Pesenka on 18/08/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animationView: UIView!
    
    override func viewWillLayoutSubviews() {
        animationView.layer.cornerRadius = animationView.frame.width / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


//
//  ViewController.swift
//  RandomSpring
//
//  Created by Alex Pesenka on 18/08/24.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet weak var animationView: SpringView!
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var velocityLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewWillLayoutSubviews() {
        animationView.layer.cornerRadius = animationView.frame.width / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
    }
    
    @IBAction func startAnimation(_ sender: SpringButton) {
        performAnimation()
        setLabels()
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    
    }
    
    private func setLabels() {
        presetLabel.text = animation.preset
        curveLabel.text = animation.curve
        forceLabel.text = String(format: "%.2f", animation.force)
        durationLabel.text = String(format: "%.2f", animation.duration)
        velocityLabel.text = String(format: "%.2f", animation.velocity)
        
    }
    
    private func performAnimation() {
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.velocity = animation.velocity
        animationView.animate()
    }
    
}

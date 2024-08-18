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
    
    var currentAnimation: Animation!
    var nextAnimation: Animation!
    
    override func viewWillLayoutSubviews() {
        animationView.layer.cornerRadius = animationView.frame.width / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentAnimation = Animation.getRandomAnimation()
        setLabels()
    }
    
    @IBAction func startAnimation(_ sender: SpringButton) {
        performAnimation()
        setLabels()
        
        nextAnimation = Animation.getRandomAnimation()
        sender.setTitle("\(nextAnimation.preset)", for: .normal)
        currentAnimation = nextAnimation
    }
    
    private func setLabels() {
        presetLabel.text = currentAnimation.preset
        curveLabel.text = currentAnimation.curve
        forceLabel.text = String(format: "%.2f", currentAnimation.force)
        durationLabel.text = String(format: "%.2f", currentAnimation.duration)
        velocityLabel.text = String(format: "%.2f", currentAnimation.velocity)
        
    }
    
    private func performAnimation() {
        animationView.animation = currentAnimation.preset
        animationView.curve = currentAnimation.curve
        animationView.force = currentAnimation.force
        animationView.duration = currentAnimation.duration
        animationView.velocity = currentAnimation.velocity
        animationView.animate()
    }
    
}


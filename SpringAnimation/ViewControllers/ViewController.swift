//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Artiom Poluyanovich on 27.04.21.
//

import Spring

class ViewController: UIViewController {
    
    
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var presetLabel: UILabel!
    
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var runAnimation: UIButton!
    
    @IBAction func runAnimationTapped() {
        let animationProperties = AnimationProperties.getProperties()
        setText(text: animationProperties)
        animateView(with: animationProperties)
    }
    
    private func animateView(with properties: AnimationProperties) {
        setOptions(with: properties)
        springAnimationView.animate()
    }
    
    private func setOptions(with property: AnimationProperties) {
        springAnimationView.animation = property.animation
        springAnimationView.curve = property.curve
        
        springAnimationView.force = property.force
        springAnimationView.duration = property.duration
        springAnimationView.delay = property.delay
        
        springAnimationView.damping = property.damping
        springAnimationView.velocity = property.velocity
        springAnimationView.scaleX = property.scale
        springAnimationView.scaleY = property.scale
        springAnimationView.x = property.x
        springAnimationView.y = property.y
        springAnimationView.rotate = property.rotate
    }
    
    private func setText(text: AnimationProperties) {
        presetLabel.text = "preset: \(text.animation)"
        curveLabel.text = "curve: \(text.curve)"
        forceLabel.text = "force: \(String(format: "%.2f", Double(text.force)))"
        durationLabel.text = "duration: \(String(format: "%.2f", Double(text.duration)))"
        delayLabel.text = "delay: \(String(format: "%.2f", Double(text.delay)))"
        
        runAnimation.setTitle(text.animation, for: .normal)
    }
    
}

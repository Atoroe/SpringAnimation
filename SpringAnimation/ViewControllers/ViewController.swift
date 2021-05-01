//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Artiom Poluyanovich on 27.04.21.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var runAnimation: UIButton!
    
    var property = Property.getProperty()
    
    @IBAction func runAnimationTapped() {
        descriptionLabel.text = property.description
        startAnimation(with: property)
        property = Property.getProperty()
        runAnimation.setTitle(property.animation, for: .normal)
    }
}

//MARK: - Spring Animation
extension ViewController {
    private func startAnimation(with property: Property) {
        springAnimationView.animation = property.animation
        springAnimationView.curve = property.curve
        springAnimationView.force = CGFloat(property.force)
        springAnimationView.duration = CGFloat(property.duration)
        springAnimationView.delay = CGFloat(property.delay)
        springAnimationView.damping = CGFloat(property.damping)
        springAnimationView.velocity = CGFloat(property.velocity)
        springAnimationView.scaleX = 0
        springAnimationView.scaleY = 0
        
        springAnimationView.animate()
    }
}

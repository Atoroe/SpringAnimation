//
//  Spring.swift
//  SpringAnimation
//
//  Created by Artiom Poluyanovich on 27.04.21.
//
import Spring

struct AnimationProperties {
    var animation: String
    var curve: String
    
    var force: CGFloat = 1
    var duration: CGFloat = 1
    var delay: CGFloat = 0
    
    var damping: CGFloat = 0.7
    var velocity: CGFloat = 0.7
    var scale: CGFloat = 1
    var x: CGFloat
    var y: CGFloat
    var rotate: CGFloat
}

extension AnimationProperties {
    static func getProperties() -> AnimationProperties {
        AnimationProperties(
            animation: Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? "shake",
            curve: Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? "spring",
            force: CGFloat.random(in: 0...2),
            duration: CGFloat.random(in: 0...2),
            delay: CGFloat.random(in: 0...1),
            damping: CGFloat.random(in: 0...2),
            velocity: CGFloat.random(in: 0...2),
            scale: CGFloat.random(in: 0...2),
            x: 0,
            y: 0,
            rotate: 0)
    }
}


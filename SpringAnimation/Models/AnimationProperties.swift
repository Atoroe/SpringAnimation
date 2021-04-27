//
//  Spring.swift
//  SpringAnimation
//
//  Created by Artiom Poluyanovich on 27.04.21.
//
import Spring

struct AnimationProperties {
    let animation: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    let damping: CGFloat
    let velocity: CGFloat
    let scale: CGFloat
}

extension AnimationProperties {
    static func getProperties() -> AnimationProperties {
        AnimationProperties(
            animation: Spring.AnimationPreset.allCases.randomElement()?.rawValue ??
                Spring.AnimationPreset.shake.rawValue,
            curve: Spring.AnimationCurve.allCases.randomElement()?.rawValue ??
                Spring.AnimationCurve.spring.rawValue,
            force: CGFloat.random(in: 0...2),
            duration: CGFloat.random(in: 0...2),
            delay: CGFloat.random(in: 0...1),
            damping: CGFloat.random(in: 0...2),
            velocity: CGFloat.random(in: 0...2),
            scale: CGFloat.random(in: 0...2)
            )
    }
}


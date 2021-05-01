//
//  Spring.swift
//  SpringAnimation
//
//  Created by Artiom Poluyanovich on 27.04.21.
//
import Spring

struct Property {
    let animation: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    let damping: Double
    let velocity: Double
    let scale: Double
    
    var description: String {
        """
        preset: \(animation)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
}

extension Property {
    static func getProperty() -> Property {
        let property = Property(
            animation: Spring.AnimationPreset.allCases.randomElement()?.rawValue ??
                Spring.AnimationPreset.shake.rawValue,
            curve: Spring.AnimationCurve.allCases.randomElement()?.rawValue ??
                Spring.AnimationCurve.spring.rawValue,
            force: Double.random(in: 0.5...2),
            duration: Double.random(in: 1...2),
            delay: Double.random(in: 0.5...1),
            damping: Double.random(in: 1...2),
            velocity: Double.random(in: 1...2),
            scale: Double.random(in: 1...2)
        )
        return property
    }
}





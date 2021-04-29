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
    let force: Double
    let duration: Double
    let delay: Double
    let damping: Double
    let velocity: Double
    let scale: Double
    
    var textDescription: [String] {
        [
            animation,
            curve,
            String(format: "%.2f", force),
            String(format: "%.2f", duration),
            String(format: "%.2f", delay),
            String(format: "%.2f", damping),
            String(format: "%.2f", velocity),
            String(format: "%.2f", scale)
        ]
    }
}




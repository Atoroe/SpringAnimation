//
//  DataManager.swift
//  SpringAnimation
//
//  Created by Artiom Poluyanovich on 29.04.21.
//

import Spring

class DataManager {
    static let shared = DataManager()
    private init() {}
    
    private let animation = Spring.AnimationPreset.allCases.randomElement()?.rawValue ??
        Spring.AnimationPreset.shake.rawValue
    private let curve = Spring.AnimationCurve.allCases.randomElement()?.rawValue ??
        Spring.AnimationCurve.spring.rawValue
    private let force = Double.random(in: 0...2)
    private let duration = Double.random(in: 1...2)
    private let delay = Double.random(in: 1...2)
    private let damping = Double.random(in: 0...2)
    private let velocity = Double.random(in: 0...2)
    private let scale = Double.random(in: 0...2)
    
    func getDescription() -> AnimationProperties {
        let description = AnimationProperties(
            animation: animation,
            curve: curve,
            force: force,
            duration: duration,
            delay: delay,
            damping: damping,
            velocity: velocity,
            scale: scale)
        return description
    }
}


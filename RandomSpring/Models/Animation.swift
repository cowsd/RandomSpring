//
//  Model.swift
//  RandomSpring
//
//  Created by Alex Pesenka on 18/08/24.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let velocity: Double
    
    static func getRandomAnimation() -> Animation {
        let preset = DataStore.shared.presets.randomElement() ?? "pop"
        let curve = DataStore.shared.curves.randomElement() ?? "linear"
        let force = Double.random(in: 1.0...2.5)
        let duration = Double.random(in: 0.5...3.0)
        let velocity = Double.random(in: 0.0...1.0)
        
        return Animation(
            preset: preset,
            curve: curve,
            force: force,
            duration: duration,
            velocity: velocity
        )
    }
    
}

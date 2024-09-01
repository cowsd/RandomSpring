//
//  DataStorage.swift
//  RandomSpring
//
//  Created by Alex Pesenka on 18/08/24.
//

import SpringAnimation

final class DataStore {
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    
    let curves = AnimationCurve.allCases
    
    private init() {}
}

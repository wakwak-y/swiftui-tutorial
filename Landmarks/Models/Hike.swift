//
//  Hike.swift
//  Landmarks
//
//  Created by Yu Wakui on 2024/10/09.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    static var formater: LengthFormatter = .init()
    
    var distanceText: String {
        Hike.formater.string(fromValue: distance, unit: .kilometer)
    }
    
    
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
}

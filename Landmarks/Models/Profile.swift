//
//  Profile.swift
//  Landmarks
//
//  Created by Yu Wakui on 2024/10/09.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications: Bool = true
    var seasonalPhoto: Season = .winter
    var goalData: Date = .init()
    
    static let `default` = Profile(username: "yu_wakui")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}

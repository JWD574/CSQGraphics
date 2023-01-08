//
//  TabBarItem.swift
//  CSQGraphics
//
//  Created by Joseph  DeWeese on 1/7/23.
//

import SwiftUI

enum TabBarItem: Hashable {
    case Settings, TodayView, Info
    
    var iconName: String {
        switch self {
        case .Settings: return "gear"
        case .TodayView: return "house.fill"
        case.Info: return "person.fill"
      
        }
    }
    var title: String {
        switch self {
        case .Settings: return "Settings"
        case .TodayView: return "Home"
        case.Info: return "Info"
      
        }
    }
    var color: Color {
        switch self {
        case .Settings: return Color.green
        case .TodayView: return Color.blue
        case.Info: return Color.orange
        
            }
        }
    }


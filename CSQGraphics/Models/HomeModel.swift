//
//  HomeModel.swift
//  CSQGraphics
//
//  Created by Joseph  DeWeese on 1/7/23.
//


import Foundation
import SwiftUI


struct Today: Identifiable {
    //MARK:  DATA MODEL
    var id = UUID().uuidString
    var appName: String
    var appDescription: String
    var appLogo: String
    var bannerTitle: String
    var platformTitle: String
    var artwork: String
    
}
//MARK:  SAMPLE DATA
var todayItems: [Today] = [
    Today(appName: "Fantasy Graphics", appDescription: "whatever", appLogo: "profilelogo", bannerTitle: "kiss my ass", platformTitle: "gshgdhsdgs", artwork: "Pope"),
    Today(appName: "Fantasy Graphics", appDescription: "whatever", appLogo: "profilelogo", bannerTitle: "kiss my ass", platformTitle: "gshgdhsdgs", artwork: "banner"),
    Today(appName: "Fantasy Graphics", appDescription: "whatever", appLogo: "profilelogo", bannerTitle: "kiss my ass", platformTitle: "gshgdhsdgs", artwork: "devilhead"),
    Today(appName: "Fantasy Graphics", appDescription: "whatever", appLogo: "profilelogo", bannerTitle: "kiss my ass", platformTitle: "gshgdhsdgs", artwork: "Gym"),
    Today(appName: "Fantasy Graphics", appDescription: "whatever", appLogo: "profilelogo", bannerTitle: "kiss my ass", platformTitle: "gshgdhsdgs", artwork: "ice"),
    Today(appName: "Fantasy Graphics", appDescription: "whatever", appLogo: "profilelogo", bannerTitle: "kiss my ass", platformTitle: "gshgdhsdgs", artwork: "ork"),
    
]


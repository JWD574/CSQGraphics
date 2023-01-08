//
//  TabBarView.swift
//  CSQGraphics
//
//  Created by Joseph  DeWeese on 1/7/23.
//

import SwiftUI

struct TabBarView: View {
    //MARK: PROPERTIES
    @State private var selection: String = "Today"
    @State private var tabSelection: TabBarItem = .TodayView
    
   
    
    var body: some View {
    //MARK: CUSTOM TAB BAR
        CustomTabBarContainerView(selection: $tabSelection) {
            
            About()
                .tabBarItem(tab: .Settings, selection: $tabSelection)
            
            TodayView( )
                .tabBarItem(tab: .TodayView, selection: $tabSelection)
            
            Settings()
                .tabBarItem(tab: .Info, selection: $tabSelection)
            
            
        }
    }
}
//MARK:  TAB BAR VIEW EXTENSION
                extension TabBarView {
                    
                    private var defaultTabView: some View{
                        //Tab View..
                        TabView(selection: $selection) {
                            About()
                                .tabItem {
                                    Image(systemName: "gear")
                                    Text("Settings")
                                }
                            TodayView()
                                .tabItem {
                                    Image(systemName: "figure.highintensity.intervaltraining")
                                    Text("Today")
                                }
                            Settings()
                                .tabItem {
                                    Image(systemName: "info")
                                    Text("About")
                                }
                        }
                    }
                }
                
                           


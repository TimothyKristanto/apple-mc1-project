//
//  HomeTab.swift
//  drakonnect_prototyping
//
//  Created by Timothy on 06/04/23.
//

import SwiftUI

struct HomeTab: View {
    var body: some View {
        TabView{
            CommunitiesSelectionPage()
                .tabItem {
                    Label("Communities", systemImage: "person.3.fill")
                }
            
            UserProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
        .background(.white)
        .onAppear {
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithOpaqueBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
    }
}

struct HomeTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeTab()
    }
}

//
//  Home.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 10/28/23.
//

import SwiftUI

struct Home: View {
    // View Properties
    @State private var activeTab: Tab = .photos
    // All Tab's
    @State private var allTabs: [AnimatedTab] = Tab.allCases.compactMap { tab -> AnimatedTab? in
        return .init(tab: tab)
    }
//     Bounce Property
//    @State private var bouncesDown: Bool = true
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $activeTab) {
                NavigationStack {
                    VStack {
                        Main()
                    }
                }
                .setUpTab(.photos)
                NavigationStack {
                    VStack {
                        Text("chat")
                            .foregroundStyle(Color.gray)
                    }
                    .navigationTitle(Tab.chat.title)
                }
                .setUpTab(.chat)
                NavigationStack {
                    VStack {
                        Text("apps")
                            .foregroundStyle(Color.gray)
                    }
                    .navigationTitle(Tab.apps.title)
                }
                .setUpTab(.apps)
                NavigationStack {
                    VStack {
                        Text("notifications")
                            .foregroundStyle(Color.gray)
                    }
                    .navigationTitle(Tab.notifications.title)
                }
                .setUpTab(.notifications)
                NavigationStack {
                    VStack {
                        Text("profile")
                            .foregroundStyle(Color.gray)
                    }
                    .navigationTitle(Tab.profile.title)
                }
                .setUpTab(.profile)
            }
            
//             Just For Demo Purpose
//            Picker("", selection: $bouncesDown) {
//                Text("bounces Down")
//                    .tag(true)
//                
//                Text("bounces Up")
//                    .tag(false)
//            }
//            .pickerStyle(.segmented)
//            .padding(.horizontal, 15)
//            .padding(.bottom, 20)
            
            CustomTabBar()
        }
    }
    
    // Custom Tab Bar
    @ViewBuilder
    func CustomTabBar() -> some View {
        HStack(spacing: 0) {
            ForEach($allTabs) { $animatedTab in
                let tab = animatedTab.tab
                
                VStack(spacing: 4) {
                    Image(systemName: tab.rawValue)
                        .font(.title2)
//                        .symbolEffect(bouncesDown ? .bounce.down.byLayer : .bounce.up.byLayer, value: animatedTab.isAnimating)
                    
                    Text(tab.title)
                        .font(.caption2)
                        .textScale(.secondary)
                }
                .frame(maxWidth: .infinity)
                .foregroundStyle(activeTab == tab ? Color.primary : Color.gray.opacity(0.8))
                .padding(.top, 15)
                .padding(.bottom, 10)
                .contentShape(.rect)
                // You Can Also Use Button, If you Choose to
                .onTapGesture {
                    withAnimation(.bouncy, completionCriteria: .logicallyComplete, {
                        activeTab = tab
                        animatedTab.isAnimating = true
                    }, completion: {
                        var transnaction = Transaction()
                        transnaction.disablesAnimations = true
                        withTransaction(transnaction) {
                            animatedTab.isAnimating = nil
                        }
                        
                    })
                }
            }
        }
        .background(.bar)
    }
}

#Preview {
    Home()
}

extension View {
    @ViewBuilder
    func setUpTab(_ tab: Tab) -> some View {
        self
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .tag(tab)
            .toolbar(.hidden, for: .tabBar)
    }
}

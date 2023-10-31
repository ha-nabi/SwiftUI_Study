//
//  Home.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 10/29/23.
//

import SwiftUI

struct Main: View {
    // View Properties
    @State private var searchText: String = ""
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 15) {
                HStack(spacing: 12) {
                    HStack(spacing: 12) {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.gray)
                        
                        TextField("Search", text: $searchText)
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 10)
                    .background(.ultraThinMaterial, in: .capsule)
                    
                    Button(action: {}, label: {
                        Image(systemName: "line.3.horizontal")
                            .font(.title)
                            .foregroundStyle(.gray)
                    })
                }
                Text("AppSchool 3rd \nGallery")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.top, .leading], 10)
                
                // Parallax Carouael
                GeometryReader(content: { geometry in
                    let size = geometry.size
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 5) {
                            ForEach(tripCards) { card in
                                    // In order to Moe the Card in Revers Direction (Parallax Effect)
                                GeometryReader(content: { proxy in
                                    let cardSize = proxy.size
//                                     Simple Parallax Effect (1)
                                    let minX = proxy.frame(in: .scrollView).minX - 30.0
                                    
                                    Image(card.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .offset(x: -minX)
                                        .frame(width: cardSize.width, height: cardSize.height)
                                        .overlay {
                                            OverlayView(card)
                                        }
                                        .clipShape(.rect(cornerRadius: 15))
                                        .shadow(color: .black.opacity(0.25), radius: 8, x: 5, y: 10)
                                })
                                .frame(width: size.width - 60, height: size.height - 50)
                                // Scroll Animation
                                .scrollTransition(.interactive, axis: .horizontal) {
                                    view, phase in
                                    view
                                        .scaleEffect(phase.isIdentity ? 1 : 0.95)
                                }
                            }
                        }
                        .padding(.horizontal, 30)
                        .scrollTargetLayout()
                        .frame(height: size.height, alignment: .top)
                    }
                    .scrollTargetBehavior(.viewAligned)
                    .scrollIndicators(.hidden)
                })
                .frame(height: 500)
                .padding(.horizontal, -15.0)
                .padding(.top, 10)
            }
            .padding(15)
        }
        .scrollIndicators(.hidden)
        
    }
    
    // Overlay View
    @ViewBuilder
    func OverlayView(_ card: TripCard) -> some View {
        ZStack(alignment: .bottomLeading, content: {
            LinearGradient(colors: [
                .clear,
                .clear,
                .clear,
                .clear,
                .clear,
                .black.opacity(0.1),
                .black.opacity(0.5),
                .black
            ], startPoint: .top, endPoint: .bottom)
            
            VStack(alignment: .leading, spacing: 4, content: {
                Text(card.title)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundStyle(.white)
                
                Text(card.subTitle)
                    .font(.callout)
                    .foregroundStyle(.white.opacity(0.8))
            })
            .padding(20)
        })
    }
}


#Preview {
    Main()
}

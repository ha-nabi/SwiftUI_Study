//
//  Discover.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 11/8/23.
//

import SwiftUI

struct Discover: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .frame(width: 20, height: 25)
                            .foregroundStyle(.black)
                        
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        VStack(spacing: 5) {
                            Capsule()
                                .fill(Color.primary)
                                .frame(width: 30, height: 3)
                            Capsule()
                                .fill(Color.primary)
                                .frame(width: 30, height: 3)
                            Capsule()
                                .fill(Color.primary)
                                .frame(width: 30, height: 3)
                        }
                        .padding()
                    })
                }
                .padding()
                
                Text("DisCover \nPremium Watches")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.trailing, 80)
                
                HStack {
                    Text("Luxury")
                        .font(.subheadline)
                        .foregroundStyle(.white)
                        .frame(width: 105, height: 50)
                        .background(.black)
                        .cornerRadius(25)
                    
                    Text("Casual")
                        .font(.subheadline)
                        .foregroundStyle(.black)
                        .frame(width: 105, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.black))
                    
                    Text("Formal")
                        .font(.subheadline)
                        .foregroundStyle(.black)
                        .frame(width: 105, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.black))
                }
                .padding()
                
                ScrollView {
                    VStack {
                        HStack(spacing: 20) {
                            Image("서울숲")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 160, height: 170)
                                .clipShape(.rect(cornerRadius: 25))
                            
                            Image("돈룩업")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 160, height: 170)
                                .clipShape(.rect(cornerRadius: 25))
                            
                        }
                        HStack {
                            VStack(alignment: .leading) {
                                Text("W3P-2SILVER    $84.00")
                                    .fontWeight(.bold)
                                Text("Meller")
                            }
                            .padding(.trailing, 25)
                            
                            VStack(alignment: .leading) {
                                Text("11ON-3.2GOLD    $84.00")
                                    .fontWeight(.bold)
                                Text("Meller")
                            }
                        }
                        .font(.caption)
                        
                        
                        HStack(spacing: 20) {
                            Image("술집")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 160, height: 170)
                                .clipShape(.rect(cornerRadius: 25))
                            
                            Image("점심식사")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 160, height: 170)
                                .clipShape(.rect(cornerRadius: 25))
                            
                        }
                        HStack {
                            VStack(alignment: .leading) {
                                Text("10NH-28BLACK    $99.00")
                                    .fontWeight(.bold)
                                Text("Meller")
                            }
                            .padding(.trailing, 20)
                            
                            VStack(alignment: .leading) {
                                Text("W3N-2ROSE    $84.00")
                                    .fontWeight(.bold)
                                Text("Meller")
                            }
                            .padding(.trailing, 17)
                        }
                    }
                    .font(.caption)
                }
            }
        }
        .background(Color(.systemBackground))
    }
}

#Preview {
    Discover()
}

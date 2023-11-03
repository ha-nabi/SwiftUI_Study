//
//  SwiftUIView.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 11/4/23.
//

import SwiftUI

struct checkyourmail: View {
    var body: some View {
            VStack(alignment: .leading) {
                Text("Check your mail")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 5)
                Text("We have sent g reset password to your \nemail address")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            .padding(.trailing, 100)
            .padding(.top, 80)
            
            Spacer()
            Image(systemName: "paperplane.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
                .foregroundStyle(Color(.systemGray))
            
            
            HStack {
                Button {
                    
                } label: {
                    Text("Open email app")
                    
                }
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
                .frame(width: 333, height: 50)
                .background(Color(.systemGray))
                .cornerRadius(10)
                .padding(.vertical, 50)
            }
            
            Spacer()
            HStack {
                Text("Didn't you receive any code?")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                Text("Resend")
                    .font(.subheadline)
                    .fontWeight(.semibold)
        }
    }
}

#Preview {
    checkyourmail()
}


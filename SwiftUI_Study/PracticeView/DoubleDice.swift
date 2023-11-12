//
//  test.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 11/12/23.
//

import SwiftUI

struct test: View {
    @State private var changeImage = ["one", "two", "three", "four", "five", "six"]
    @State private var image1 = "one"
    @State private var image2 = "one"
    @State private var newLabel = "주사위를 굴려주세요!"
    var body: some View {
            HStack {
                Image(image1)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180)
                
                Image(image2)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180)
            }
        
        Text(newLabel)
            .padding(.top, 30)
                
                VStack {
                    Button(action: {
                        didTapChangeImageButton()
                    }, label: {
                        Text("변경 해주세요")
                    })
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(.blue)
                    .cornerRadius(20)
                }
                .padding(.top, 100)
            }
    
    func didTapChangeImageButton() {
        image1 = changeImage.randomElement() ?? "one"
        image2 = changeImage.randomElement() ?? "one"
        
        if image1 == image2 {
            newLabel = "더블!"
        } else {
            newLabel = "다시 굴려주세요!"
        }
    }
}

#Preview {
    test()
}

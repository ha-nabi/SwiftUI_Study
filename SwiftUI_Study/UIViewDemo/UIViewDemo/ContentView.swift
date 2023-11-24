//
//  ContentView.swift
//  UIViewDemo
//
//  Created by 강치우 on 11/24/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var imagePickerVisible: Bool = false
    @State var selectedImage: Image? = Image(systemName: "photo")
    
    var body: some View {
        ZStack {
            VStack {
                selectedImage?
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Button {
                    imagePickerVisible.toggle()
                } label: {
                    Text("Select an Image")
                }
                
                // MyScrollView 사용하기
                // MyScrollView(text: "UIView in SwiftUI")
            }
            .padding()
            
            if imagePickerVisible {
                MyImagePicker(imagePickerVisible: $imagePickerVisible, selectedImage: $selectedImage)
            }
        }
    }
}

#Preview {
    ContentView()
}

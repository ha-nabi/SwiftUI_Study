//
//  ContentView.swift
//  KaKao_Login
//
//  Created by 강치우 on 11/21/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var kakaoAuthVM: KaKaoAuthVM = KaKaoAuthVM()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("bg")
                    .resizable()
                    .ignoresSafeArea(.all)
                
                VStack(spacing: 20) {
                    
                    Image("logo")
                        .padding()
                    
                    Button {
                        kakaoAuthVM.handleKakaoLogin()
                    } label: {
                        Image("kakao_login")
                            .resizable()
                            .frame(width: 277, height: 46)
                    }
                    
                    Button {
                        
                    } label: {
                        Image("naver_login")
                            .resizable()
                            .frame(width: 277, height: 46)
                    }
                    
                    Button {
                        
                    } label: {
                        Image("google_login")
                            .resizable()
                            .frame(width: 277, height: 46)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}


// 로그아웃 버튼
//Button {
//    kakaoAuthVM.kakaoLogout()
//} label: {
//    Text("카카오 로그아웃")
//}

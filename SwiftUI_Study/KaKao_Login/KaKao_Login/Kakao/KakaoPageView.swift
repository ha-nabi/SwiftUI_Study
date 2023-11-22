//
//  KakaoPageView.swift
//  KaKao_Login
//
//  Created by 강치우 on 11/22/23.
//

import SwiftUI

struct KakaoPageView: View {
    
    @StateObject var kakaoAuthVM: KaKaoAuthVM = KaKaoAuthVM()
    
    var body: some View {
        // 카카오 로그아웃 버튼
        Button {
            kakaoAuthVM.kakaoLogout()
        } label: {
            Text("카카오 로그아웃")
        }
    }
}

#Preview {
    KakaoPageView()
}

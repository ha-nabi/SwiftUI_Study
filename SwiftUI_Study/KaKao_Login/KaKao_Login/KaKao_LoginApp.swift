//
//  KaKao_LoginApp.swift
//  KaKao_Login
//
//  Created by 강치우 on 11/21/23.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth
import NaverThirdPartyLogin
import GoogleSignIn

@main
struct KaKao_LoginApp: App {
    
    init() {
        // Kakao SDK 초기화
        KakaoSDK.initSDK(appKey: "178f4e1b9d68c29bb02c9ec498f42fde")
        
    }
    
    
    
    var body: some Scene {
        WindowGroup {
            ContentView(userData: UserData(url: nil, name: "", email: ""))
                .onOpenURL { url in // 뷰가 속한 Window에 대한 URL을 받았을 때 호출할 Handler를 등록하는 함수
                    // 카카오 로그인을 위해 웹 혹은 카카오톡 앱으로 이동 후 다시 앱으로 돌아오는 과정을 거쳐야하므로, Handler를 추가로 등록해줌
                    if AuthApi.isKakaoTalkLoginUrl(url) {
                        _ = AuthController.handleOpenUrl(url: url)
                    }
                }
                .onOpenURL { url in
                    // 네이버 Token 발급 요청
                    NaverThirdPartyLoginConnection
                        .getSharedInstance()
                        .receiveAccessToken(url)
                }
                .onOpenURL { url in
                    GIDSignIn.sharedInstance.handle(url)
                }
        }
    }
}

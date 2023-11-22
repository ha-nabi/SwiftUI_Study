//
//  KaKaoAuthVM.swift
//  KaKao_Login
//
//  Created by 강치우 on 11/22/23.
//

import Foundation
import Combine
import KakaoSDKUser

class KaKaoAuthVM: ObservableObject {
    
    @Published var isLoggedIn: Bool = false
    
    @MainActor
    func kakaoLogout() {
        Task {
            if await handleKakaoLogout() {
                isLoggedIn = false
            }
        }
    }
    
    
    func handleKakaoLogout() async -> Bool {
        
        await withCheckedContinuation { continuation in
            UserApi.shared.logout {(error) in
                if let error = error {
                    print(error)
                    continuation.resume(returning: false)
                }
                else {
                    print("카카오 로그아웃 했음")
                    continuation.resume(returning: true)
                }
            }
        }
    }
    
    @MainActor
    func handleLoginWithKakaoAccount() async -> Bool {
        
        await withCheckedContinuation { continuation in
            UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                if let error = error {
                    print(error)
                    continuation.resume(returning: false)
                }
                else {
                    print("카카오 로그인 성공")
                    
                    //do something
                    _ = oauthToken
                    continuation.resume(returning: true)
                }
            }
        }
    }
    
    
    func handleLoginWithKakaoTalkApp() async -> Bool {
        
        await withCheckedContinuation { continuation in
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                    continuation.resume(returning: false)
                }
                else {
                    print("카카오톡 로그인 성공")
                    
                    //do something
                    _ = oauthToken
                    continuation.resume(returning: true)
                }
            }
        }
    }
    
    @MainActor
    func handleKakaoLogin() {
        Task {
            // 카카오톡 실행 가능 여부 확인 - 설치 되어있을 때
            if (UserApi.isKakaoTalkLoginAvailable()) {
                // 카카오 앱을 통해 로그인
                isLoggedIn = await handleLoginWithKakaoTalkApp()
            } else { // 설치 안되어있을 때
                // 카카오 웹뷰로 로그인
                isLoggedIn = await handleLoginWithKakaoAccount()
            }
        }
    }
}

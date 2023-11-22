//
//  NaverVM.swift
//  KaKao_Login
//
//  Created by 강치우 on 11/22/23.
//

import Foundation
import Combine
import NaverThirdPartyLogin

extension ContentView : UIApplicationDelegate, NaverThirdPartyLoginConnectionDelegate {
    // 토큰 발급 성공시
    func oauth20ConnectionDidFinishRequestACTokenWithAuthCode() {
        
    }
    // 토큰 갱신시
    func oauth20ConnectionDidFinishRequestACTokenWithRefreshToken() {
        
    }
    // 로그아웃(토큰 삭제)시
    func oauth20ConnectionDidFinishDeleteToken() {
        
    }
    // Error 발생
    func oauth20Connection(_ oauthConnection: NaverThirdPartyLoginConnection!, didFailWithError error: Error!) {
        
    }
}

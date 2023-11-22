//
//  UserData.swift
//  KaKao_Login
//
//  Created by 강치우 on 11/22/23.
//

import Foundation

struct UserData {
    let url: URL?
    let name: String
    let email: String
    
    init(url: URL?, name: String, email: String) {
        self.url = url
        self.name = name
        self.email = email
    }
}

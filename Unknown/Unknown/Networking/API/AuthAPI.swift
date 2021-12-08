//
//  AuthAPI.swift
//  Unknown
//
//  Created by kimsian on 2021/11/25.
//

import Foundation

enum AuthAPI: API {
    
    case signup, login
    func path() -> String {
        switch self {
        case .login:
            return "/user/login"
        case .signup:
            return "/user/signup"
        }
    }    
}

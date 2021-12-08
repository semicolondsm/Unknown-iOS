//
//  TokenModel.swift
//  Unknown
//
//  Created by kimsian on 2021/12/08.
//

import Foundation

struct TokenModel : Codable {
    var access_token = String()
    var refresh_token = String()
    
    init(access_token : String,  refresh_token : String) {
        self.access_token = access_token
        self.refresh_token = refresh_token
    }
}

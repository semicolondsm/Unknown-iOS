//
//  CommunityAPI.swift
//  Unknown
//
//  Created by kimsian on 2021/11/25.
//

import Foundation

enum CommunityAPI: API {
    
    case write, watch, delete(_ id: Int), edit
    func path() -> String {
        switch self {
        case .write, .watch, .edit:
            return "/post"
        case .delete(let id):
            return "/post/\(id)"
        }
    }
    
    
}

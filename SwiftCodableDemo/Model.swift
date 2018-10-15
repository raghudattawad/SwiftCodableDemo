//
//  Model.swift
//  SwiftCodableDemo
//
//  Created by Raghavendra Dattawad on 10/15/18.
//  Copyright © 2018 Raghavendra Dattawad. All rights reserved.
//

import Foundation

struct MyGitHub: Codable {
    
    let name: String?
    let locatio: String?
    let followers: Int?
    let avatarUrl: URL?
    let repos: Int?
    
    private enum CodingKeys: String, CodingKey {
        case name
        case locatio
        case followers
        case repos = "public_repos"
        case avatarUrl = "avatar_url"
        
    }

}


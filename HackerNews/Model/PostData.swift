//
//  PostData.swift
//  HackerNews
//
//  Created by Sagar c bellad on 30/04/20.
//  Copyright © 2020 Sagar c bellad. All rights reserved.
//

import Foundation

struct result:Decodable {
    let hits: [Post]
}

struct Post: Decodable,Identifiable{
    var id: String{
        return objectID
    }
    
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}

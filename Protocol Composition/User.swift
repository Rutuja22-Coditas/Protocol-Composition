//
//  User.swift
//  Protocol Composition
//
//  Created by Coditas on 14/10/21.
//  Copyright © 2021 Coditas. All rights reserved.
//

import Foundation

struct Emp : Codable{
    var data : [Employee]
}
struct Employee : Codable{
    var id : Int?
    var email : String?
    var first_name : String?
    var last_name : String?
    var avatar : String?
}

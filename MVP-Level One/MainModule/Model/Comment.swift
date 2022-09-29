//
//  Person.swift
//  MVP-Level One
//
//  Created by Алия Тлеген on 27.09.2022.
//

import Foundation

struct Comment: Decodable {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}

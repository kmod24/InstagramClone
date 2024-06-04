//
//  User.swift
//  Instagram
//
//  Created by Kyle Modina on 5/25/24.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User{
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "gojo", profileImageUrl: nil, fullname: "Gojo Satoru", bio: "STRONGEST JJK CHARACTER", email: "gojo@gmail.com"),
        .init(id: NSUUID().uuidString, username: "itadori", profileImageUrl: nil, fullname: "Itadori Yuji", bio: "Main character", email: "itadori@gmail.com"),
        .init(id: NSUUID().uuidString, username: "megumi", profileImageUrl: nil, fullname: "Megumi Fushiguro", bio: "Mahoraga guy", email: "megumi@gmail.com"),
        .init(id: NSUUID().uuidString, username: "sukuna", profileImageUrl: nil, fullname: nil, bio: "Main antagonist", email: "sukuna@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Toji", profileImageUrl: nil, fullname: "Toji Fushiguro", bio: "Second coldest character", email: "toji@gmail.com"),
    ]
}

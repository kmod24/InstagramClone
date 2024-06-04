//
//  Post.swift
//  Instagram
//
//  Created by Kyle Modina on 5/28/24.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: " This is Gojo",
              likes: 123,
              imageUrl: "gojo2",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: " This is Gojo 2",
              likes: 123,
              imageUrl: "gojo",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: " This is itadori",
              likes: 234,
              imageUrl: "itadori",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: " This is megumi",
              likes: 456,
              imageUrl: "megumi",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: " This is sukuna",
              likes: 789,
              imageUrl: "sukuna",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[3]
        ),
        .init(
            id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: " This is toji",
              likes: 987,
              imageUrl: "toji",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[4]
        )
    ]
}

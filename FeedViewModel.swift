//
//  FeedViewModel.swift
//  Instagram
//
//  Created by Kyle Modina on 6/3/24.
//

import Foundation
import Firebase

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        Task { try await fetchPosts() }
    }
    
    @MainActor
    func fetchPosts() async throws{
        self.posts = try await PostService.fetchFeedPosts()
    }
}

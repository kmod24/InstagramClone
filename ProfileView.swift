//
//  ProfileView.swift
//  Instagram
//
//  Created by Kyle Modina on 5/15/24.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    var body: some View {
            ScrollView{
                //header
                ProfileHeaderView(user: user)
                
                //post grid view
                PostGridView(user: user)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider{
    static var previews: some View {
        ProfileView(user: User.MOCK_USERS[0])
    }
}

//
//  CircularProfileImageView.swift
//  Instagram
//
//  Created by Kyle Modina on 6/3/24.
//

import SwiftUI
import Kingfisher

enum ProfileImageSize {
    case xSmall
    case small
    case medium
    case large
    
    var dimension: CGFloat {
        switch self {
        case .xSmall:
            40
        case .small:
            48
        case .medium:
            64
        case .large:
            80
        }
    }
}

struct CircularProfileImageView: View {
    let user: User
    let size: ProfileImageSize
    
    
    
    var body: some View {
        if let imageUrl = user.profileImageUrl {
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
                .foregroundColor(Color(.systemGray4))
        }
    }
}

struct CircularProfileImageView_Previews: PreviewProvider{
    static var previews: some View {
        CircularProfileImageView(user: User.MOCK_USERS[0], size: .large)
    }
}

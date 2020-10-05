//
//  UserViewModel.swift
//  MVVM Simple Aplication
//
//  Created by Lucas Oliveira on 03/10/20.
//

import UIKit

class UserViewModel {
    
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    // só tem a funçao de get
    
    var name: String {
        return user.name
    }
    
    var image: UIImage {
        return user.image ?? UIImage(named: "UserIcon")!
    }
    
    var numberOfFollowersText: String {
        return "\(user.followers)"
    }
    
    var numberOfVideosText: String {
        return "\(user.videos.count)"
    }
    
}

extension UserViewModel {
    func configure(view: UserView) {
        view.userNameLabel.text = name
        view.imageUser.image = image
        view.followersNumberLabel.text = numberOfFollowersText
        view.videosNumberLabel.text = numberOfVideosText
        
    }
}

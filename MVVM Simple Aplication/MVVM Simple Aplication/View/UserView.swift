//
//  UserView.swift
//  MVVM Simple Aplication
//
//  Created by Lucas Oliveira on 03/10/20.
//

// Lembrete é possivel ter dois estilos em uma mesma uiLabel

import UIKit
class UserView: UIView {
    
    let imageUser: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .white
        imageView.layer.cornerRadius = 43
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let userNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    let followersTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .white
        label.text = "followers"
        return label
    }()
    
    let followersNumberLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .heavy)
        label.textColor = .white
        return label
    }()
    
    let videosTextLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .white
        label.text = "videos"
        return label
    }()
    
    let videosNumberLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .heavy)
        label.textColor = .white
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        
        setupConstraintImageUser()
        setupConstraintUserNameLabel()
        setupConstraintFollowersNumberLabel()
        setupConstraintFollowersTextLabel()
        setupConstraintVideosNumberLabel()
        setupConstraintVideosTextLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraintImageUser() {
        addSubview(imageUser)
        imageUser.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageUser.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            imageUser.topAnchor.constraint(lessThanOrEqualTo: topAnchor, constant: 96),
            imageUser.heightAnchor.constraint(equalToConstant: 86),
            imageUser.widthAnchor.constraint(equalToConstant: 86)
        ])
    }
    
    func setupConstraintUserNameLabel() {
        addSubview(userNameLabel)
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userNameLabel.leftAnchor.constraint(equalTo: imageUser.rightAnchor, constant: 24),
            userNameLabel.centerYAnchor.constraint(equalTo: imageUser.centerYAnchor)
        ])
    }
    
    func setupConstraintFollowersNumberLabel() {
        addSubview(followersNumberLabel)
        followersNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            followersNumberLabel.leftAnchor.constraint(equalTo: imageUser.leftAnchor),
            followersNumberLabel.topAnchor.constraint(lessThanOrEqualTo: imageUser.bottomAnchor, constant: 36)
        ])
    }
    
    func setupConstraintFollowersTextLabel() {
        addSubview(followersTextLabel)
        followersTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            followersTextLabel.centerYAnchor.constraint(equalTo: followersNumberLabel.centerYAnchor),
            followersTextLabel.leftAnchor.constraint(equalTo: followersNumberLabel.rightAnchor, constant: 6)
        ])
    }
    
    func setupConstraintVideosNumberLabel() {
        addSubview(videosNumberLabel)
        videosNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            videosNumberLabel.centerYAnchor.constraint(equalTo: followersNumberLabel.centerYAnchor),
            videosNumberLabel.leftAnchor.constraint(lessThanOrEqualTo: followersTextLabel.rightAnchor, constant: 96)
        ])
    }
    
    func setupConstraintVideosTextLabel() {
        addSubview(videosTextLabel)
        videosTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            videosTextLabel.centerYAnchor.constraint(equalTo: videosNumberLabel.centerYAnchor),
            videosTextLabel.leftAnchor.constraint(equalTo: videosNumberLabel.rightAnchor, constant: 6)
        ])
    }
    
}

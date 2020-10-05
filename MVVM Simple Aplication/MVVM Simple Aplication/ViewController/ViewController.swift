//
//  ViewController.swift
//  MVVM Simple Aplication
//
//  Created by Lucas Oliveira on 03/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    let user = User(name: "papaidesigner", image: nil, followers: 100, videos: [])
    
    lazy var userViewModel = UserViewModel(user: user)
    
    let userView = UserView()
    let videosView = VideosView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userViewModel.configure(view: userView)
        setupConstraintsUserView()
        setupConstraintsVideosView()
        // Do any additional setup after loading the view.
    }
    func setupConstraintsUserView() {
        view.addSubview(userView)
        userView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userView.topAnchor.constraint(equalTo: view.topAnchor),
            userView.heightAnchor.constraint(equalToConstant: 256),
            userView.leftAnchor.constraint(equalTo: view.leftAnchor),
            userView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
    }
    func setupConstraintsVideosView() {
        view.addSubview(videosView)
        videosView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            videosView.topAnchor.constraint(equalTo: userView.bottomAnchor),
            videosView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            videosView.leftAnchor.constraint(equalTo: view.leftAnchor),
            videosView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
    }

}


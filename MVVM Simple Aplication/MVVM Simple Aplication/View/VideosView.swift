//
//  VIdeosView.swift
//  MVVM Simple Aplication
//
//  Created by Lucas Oliveira on 03/10/20.
//

import UIKit

class VideosView: UIView {
    let videoTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Videos"
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .red
        return label
    }()
    
    let redDashView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let emptyState = EmptyState()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupConstraintsEmptyState()
        setupConstraintsVideoTextLabel()
        setupConstraintsRedDashView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraintsEmptyState() {
        addSubview(emptyState)
        emptyState.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emptyState.centerXAnchor.constraint(equalTo: centerXAnchor),
            emptyState.centerYAnchor.constraint(equalTo: centerYAnchor),
            emptyState.heightAnchor.constraint(equalToConstant: 166),
            emptyState.widthAnchor.constraint(equalToConstant: 207),
        ])
    }
    
    func setupConstraintsVideoTextLabel() {
        addSubview(videoTextLabel)
        videoTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            videoTextLabel.topAnchor.constraint(equalTo: topAnchor, constant: 32),
            videoTextLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20)
        ])
    }
    
    func setupConstraintsRedDashView() {
        addSubview(redDashView)
        redDashView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            redDashView.topAnchor.constraint(equalTo: videoTextLabel.bottomAnchor, constant: 12),
            redDashView.leftAnchor.constraint(equalTo: videoTextLabel.leftAnchor),
            redDashView.heightAnchor.constraint(equalToConstant: 2),
            redDashView.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
}

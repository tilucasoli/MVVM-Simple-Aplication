//
//  EmptyState.swift
//  MVVM Simple Aplication
//
//  Created by Lucas Oliveira on 05/10/20.
//

import UIKit

class EmptyState: UIView {
    let image: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "EmptyState")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "This channel has no videos"
        label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "It's quiet... too quiet."
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        label.textColor = .gray4
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraintsImage()
        setupConstraintsTitleLabel()
        setupConstraintsDescriptionLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraintsImage() {
        addSubview(image)
        image.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            image.topAnchor.constraint(equalTo: topAnchor),
            image.heightAnchor.constraint(equalToConstant: 88),
            image.widthAnchor.constraint(equalToConstant: 82)
        ])
    }
    func setupConstraintsTitleLabel() {
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 32)
        ])
    }
    func setupConstraintsDescriptionLabel() {
        addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8)
        ])
    }
}

//
//  CategoryImageCollectionViewCell.swift
//  AirbnbCloneBootcamp
//
//  Created by Eduardo Felipe das Neves Abido on 17/09/24.
//

import UIKit

class CategoryImageCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = String(describing: CategoryCollectionViewCell.self)
    
    lazy var imageview: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "castelo2")
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        contentView.addSubview(imageview)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            imageview.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageview.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageview.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageview.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
}

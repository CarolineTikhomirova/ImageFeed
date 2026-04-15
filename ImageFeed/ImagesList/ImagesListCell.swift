//
//  ImagesListCell.swift
//  ImageFeed
//
//  Created by Caroline on 09.04.2026.
//

import UIKit

final class ImagesListCell: UITableViewCell {
    
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var gradientView: UIView!
    
    static let reuseIdentifier = "ImagesListCell"
    
    private let gradient = CAGradientLayer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupGradient()
        gradientView.layer.cornerRadius = 16
        gradientView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        gradientView.clipsToBounds = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = gradientView.bounds
    }
    
    private func setupGradient() {
        gradient.colors = [
            UIColor.clear.cgColor,
            UIColor.black.withAlphaComponent(0.5).cgColor
        ]
        gradientView.layer.insertSublayer(gradient, at: 0)
    }
}

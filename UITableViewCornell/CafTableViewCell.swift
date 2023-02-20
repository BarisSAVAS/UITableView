//
//  CafTableViewCell.swift
//  UITableViewCornell
//
//  Created by Barış Savaş on 17.02.2023.
//

import UIKit
import SnapKit

class CafTableViewCell: UITableViewCell {
    var nameLabel: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var ratingLabel: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var heartImage: UIImageView = {
        var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.isHidden = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    var networSpeed: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(nameLabel)
        contentView.addSubview(ratingLabel)
        contentView.addSubview(heartImage)
        contentView.addSubview(networSpeed)
        setupConstraints()
    }
    func configure(caf: Cafeteria) {
        nameLabel.text = caf.name
        ratingLabel.text = "Rating:\(caf.getRatingString())"
        networSpeed.text = "NetworSpeed:\(caf.getNetworkSpeedString())"
    }
    func setupConstraints() {
//        let padding: CGFloat = 8
//        let labelHeight: CGFloat = 20
//        NSLayoutConstraint.activate([
//            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
//            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
//            nameLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, constant: labelHeight),
//            nameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: padding)
//        ])
//        NSLayoutConstraint.activate([
//            ratingLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            ratingLabel.topAnchor.constraint(equalTo: contentView.bottomAnchor),
//            ratingLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: padding)
//        ])
//        NSLayoutConstraint.activate([
//            heartImage.heightAnchor.constraint(equalToConstant: 16),
//            heartImage.widthAnchor.constraint(equalToConstant: 16),
//            heartImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
//            heartImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding)
//        ])
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView.safeAreaLayoutGuide.snp.top).inset(5)
            make.left.equalTo(contentView.safeAreaLayoutGuide.snp.left).offset(10)
            make.right.equalTo(contentView.safeAreaLayoutGuide.snp.right).offset(-10)
            make.bottom.equalTo(contentView.safeAreaLayoutGuide.snp.bottom).inset(30)
        }
        ratingLabel.snp.makeConstraints { make in
            make.top.greaterThanOrEqualTo(contentView.safeAreaLayoutGuide.snp.top)
            make.left.equalTo(contentView.safeAreaLayoutGuide.snp.left).offset(10)
            make.right.equalTo(contentView.safeAreaLayoutGuide.snp.right).offset(-10)
            make.bottom.equalTo(contentView.safeAreaLayoutGuide.snp.bottom).inset(10)
        }
        networSpeed.snp.makeConstraints { make in
            make.top.greaterThanOrEqualTo(contentView.safeAreaLayoutGuide.snp.top)
            make.left.equalTo(contentView.safeAreaLayoutGuide.snp.left).offset(200)
            make.right.equalTo(contentView.safeAreaLayoutGuide.snp.right).offset(-10)
            make.bottom.equalTo(contentView.safeAreaLayoutGuide.snp.bottom).inset(10)
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

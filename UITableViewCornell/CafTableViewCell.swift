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
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView.safeAreaLayoutGuide.snp.top).inset(5)
            make.left.equalTo(contentView.safeAreaLayoutGuide.snp.left).offset(10)
        }
        ratingLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).inset(-10)
            make.leading.equalTo(nameLabel.snp.leading)
            make.bottom.equalTo(contentView.safeAreaLayoutGuide.snp.bottom).inset(10)
        }
        networSpeed.snp.makeConstraints {
            $0.bottom.equalTo(ratingLabel.snp.bottom)
            $0.leading.equalTo(ratingLabel.snp.trailing).inset(-30)
            $0.trailing.equalToSuperview().inset(16)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

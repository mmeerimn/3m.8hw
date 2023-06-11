//
//  TableViewCell.swift
//  3m.8hw
//
//  Created by Meerim Mamatkadyrova on 11/6/23.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    let image: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    let nameLabel: UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 24)
        return label
    }()
    
    let view1: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 3
        view.backgroundColor = .green
        return view
    }()
    
    let timeLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24)
        label.textColor = .white
        label.backgroundColor = .systemYellow
        return label
    }()
    
    let workLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24)
        label.textColor = .green
        return label
    }()
    
    let starImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(systemName: "star.fill")
        image.tintColor = .systemYellow
        return image
    }()
    
    let ratingLabel: UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.textColor = .lightGray
        return label
    }()
    
    let countryLabel: UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.textColor = .lightGray
        return label
    }()
    
    let view2: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 2
        view.backgroundColor = .lightGray
        return view
    }()
    
    let categoryLabel: UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.textColor = .lightGray
        return label
    }()
    
    let deliveryLabel: UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.textColor = .lightGray
        return label
    }()
    
    let view3: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 2
        return view
    }()
    
    let priceLabel: UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.textColor = .lightGray
        return label
    }()
    
    let distanceLabel: UILabel = {
       let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.textColor = .lightGray
        return label
    }()
    
    let distanceImage: UIImageView = {
       let image = UIImageView()
        image.image = UIImage(systemName: "paperplane.fill")
        image.tintColor = .lightGray
        return image
    }()
    
    

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(image)
        
        image.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(0)
            make.top.equalToSuperview().offset(0)
            make.height.equalTo(194)
        }
        
        addSubview(nameLabel)
        
        nameLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(0)
            make.top.equalTo(image.snp.bottom).offset(18)
        }
        
        addSubview(view1)
        
        view1.snp.makeConstraints { make in
            make.leading.equalTo(nameLabel.snp.trailing).offset(8)
            make.centerY.equalTo(nameLabel)
        }
        
        addSubview(workLabel)
        
        workLabel.snp.makeConstraints { make in
            make.centerY.equalTo(view1)
            make.leading.equalTo(view1.snp.trailing).offset(8)
        }
        
        addSubview(timeLabel)
        
        timeLabel.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-8)
            make.top.equalTo(image.snp.bottom).offset(22)
        }
        
        addSubview(starImage)
        
        starImage.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(0)
            make.top.equalTo(nameLabel.snp.bottom).offset(8)
            make.height.width.equalTo(13)
        }
        
        addSubview(ratingLabel)
        
        ratingLabel.snp.makeConstraints { make in
            make.centerY.equalTo(starImage)
            make.leading.equalTo(starImage.snp.trailing).offset(7)
        }
        
        addSubview(countryLabel)
        
        countryLabel.snp.makeConstraints { make in
            make.centerY.equalTo(starImage)
            make.leading.equalTo(ratingLabel.snp.trailing).offset(14)
        }
        
        addSubview(view2)
        
        view2.snp.makeConstraints { make in
            make.centerY.equalTo(starImage)
            make.leading.equalTo(countryLabel.snp.trailing).offset(7)
            make.height.width.equalTo(4)
        }
        
        addSubview(categoryLabel)
        
        categoryLabel.snp.makeConstraints { make in
            make.centerY.equalTo(starImage)
            make.leading.equalTo(view2.snp.trailing).offset(7)
        }
        
        addSubview(deliveryLabel)
        
        deliveryLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(0)
            make.top.equalTo(starImage.snp.bottom).offset(7)
        }
        
        addSubview(view3)
        
        
        view3.snp.makeConstraints { make in
            make.centerY.equalTo(deliveryLabel)
            make.leading.equalTo(deliveryLabel.snp.trailing).offset(8)
            make.height.width.equalTo(4)
        }
        
        addSubview(priceLabel)
        
        priceLabel.snp.makeConstraints { make in
            make.centerY.equalTo(deliveryLabel)
            make.leading.equalTo(view3)
        }
        
        addSubview(distanceLabel)
        
        distanceLabel.snp.makeConstraints { make in
            make.top.equalTo(timeLabel.snp.bottom).offset(24)
            make.trailing.equalToSuperview().offset(-8)
        }
        
        addSubview(distanceImage)
        
        distanceImage.snp.makeConstraints { make in
            make.trailing.equalTo(distanceLabel.snp.leading).offset(-7)
            make.centerY.equalTo(distanceLabel)
        }
        
        
        
        
        
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setData(name: String, imageName: String, work: String , time: String,
                 rating: String, country: String, category: String, delivery: String,
                 price: String, distance: String){
        image.image = UIImage(named: imageName)
        nameLabel.text = name
        workLabel.text = work
        timeLabel.text = "\(time) min"
        ratingLabel.text = rating
        countryLabel.text = country
        categoryLabel.text = category
        deliveryLabel.text = "Delivery: \(delivery)"
        priceLabel.text = "Minimum: $\(price)"
        distanceLabel.text = "\(distance) km away"
    }
    

}

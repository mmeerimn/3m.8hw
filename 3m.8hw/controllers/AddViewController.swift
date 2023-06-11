//
//  AddViewController.swift
//  3m.8hw
//
//  Created by Meerim Mamatkadyrova on 11/6/23.
//

import UIKit

class AddViewController: UIViewController {
    
    private let titleLabel: UILabel = {
       let label = UILabel()
        label.text = "Создать продукт"
        label.font = .systemFont(ofSize: 18)
        label.textColor = .black
        return label
    }()
    
    private let productNameTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Наименование продукта..."
        textField.backgroundColor = .systemGray5
        textField.layer.cornerRadius = 8
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        return textField
    }()
    
    private let productPriceTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Цена продукта..."
        textField.backgroundColor = .systemGray5
        textField.layer.cornerRadius = 8
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        return textField
    }()
    
    private let productDetailsTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Детальное описание продукта..."
        textField.backgroundColor = .systemGray5
        textField.layer.cornerRadius = 8
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        return textField
    }()
    
    private let producutCategoryTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Категория продукта..."
        textField.backgroundColor = .systemGray5
        textField.layer.cornerRadius = 8
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        return textField
    }()
    
    private let productBrandTF: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Бренд продукта..."
        textField.backgroundColor = .systemGray5
        textField.layer.cornerRadius = 8
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        return textField
    }()
    
    private let addButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Создать новый продукт", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        return button
    }()
    
    @objc func tap() {
        
        print("Добавленный новый продукт:")
        
        print("Наименование продукта:\(productNameTF.text ?? "emprty")")
        print("Цена продукта:\(productPriceTF.text ?? "emprty")")
        print("Детальное описание продукта:\(productDetailsTF.text ?? "emprty")")
        print("Категория  продукта:\(producutCategoryTF.text ?? "emprty")")
        print("Бренд продукта:\(productBrandTF.text ?? "emprty")")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white

        view.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(70)
        }
        
        view.addSubview(productNameTF)
        
        productNameTF.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(50)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(50)
        }
        
        view.addSubview(productPriceTF)
        
        productPriceTF.snp.makeConstraints { make in
            make.top.equalTo(productNameTF.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(50)
        }
        
        view.addSubview(productDetailsTF)
        
        productDetailsTF.snp.makeConstraints { make in
            make.top.equalTo(productPriceTF.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(50)
        }
        
        view.addSubview(producutCategoryTF)
        
        producutCategoryTF.snp.makeConstraints { make in
            make.top.equalTo(productDetailsTF.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(50)
        }
        
        view.addSubview(productBrandTF)
        
        productBrandTF.snp.makeConstraints { make in
            make.top.equalTo(producutCategoryTF.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(50)
        }
        
        view.addSubview(addButton)
        
        addButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.bottom.equalToSuperview().offset(-100)
            make.height.equalTo(60)
        }
                
    }

}

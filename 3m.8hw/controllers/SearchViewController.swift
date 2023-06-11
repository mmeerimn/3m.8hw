//
//  SearchViewController.swift
//  3m.8hw
//
//  Created by Meerim Mamatkadyrova on 11/6/23.
//

import UIKit

class SearchViewController: UIViewController {
    
    private var menuList: [Menu] = []
    private var filteredMenu: [Menu] = []
    private var isFiltering: Bool = false
    
    private let titleLabel: UILabel = {
       let label = UILabel()
        label.text = "Поиск продукта"
        label.font = .systemFont(ofSize: 18)
        label.textColor = .black
        return label
    }()
    
    private let searchBar: UISearchBar = {
       let searchBar = UISearchBar()
        searchBar.layer.borderColor = UIColor.white.cgColor
        searchBar.layer.borderWidth = 1.0
        searchBar.clipsToBounds = true
        searchBar.placeholder = "Поиск"
        return searchBar
    }()
    
    private var menuTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .white
        return tableView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(70)
        }
        
        view.addSubview(searchBar)
        
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(15)
            make.height.equalTo(45)
        }
        
        view.addSubview(menuTableView)
        
        menuTableView.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(15)
            make.leading.trailing.equalToSuperview().inset(15)
            make.bottom.equalToSuperview()
        }
        
        initData()
        
        menuTableView.dataSource = self
        menuTableView.delegate = self
        
        menuTableView.register(MenuTableViewCell.self, forCellReuseIdentifier: "cell")
        
        searchBar.delegate = self
        
    }
    
    func initData() {
        menuList = [Menu(image: "1", name: "Burger Craze", work: "OPEN", time: "15-20",
                         rating: "4.6 (601)", country: "American", category: "Burgers",
                         delivery: "FREE", price: "10", distance: "1.5"),
                    Menu(image: "2", name: "Vegetarian Pizza", work: "OPEN", time: "10-15",
                         rating: "4.2 (347)", country: "Italian", category: "Pizza",
                         delivery: "FREE", price: "15", distance: "2"),
                    Menu(image: "3", name: "Greek Salad", work: "OPEN", time: "5-10",
                         rating: "4.3 (411)", country: "Greece", category: "Salad",
                         delivery: "FREE", price: "5", distance: "1")]
    }
    
}

extension SearchViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        isFiltering ? filteredMenu.count : menuList.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = menuTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuTableViewCell
        cell.setData(name: isFiltering ?
                     filteredMenu[indexPath.row].name : menuList[indexPath.row].name,
                     imageName: isFiltering ?
                     filteredMenu[indexPath.row].image : menuList[indexPath.row].image,
                     work: isFiltering ?
                     filteredMenu[indexPath.row].work : menuList[indexPath.row].work,
                     time: isFiltering ?
                     filteredMenu[indexPath.row].time : menuList[indexPath.row].time,
                     rating: isFiltering ?
                     filteredMenu[indexPath.row].rating : menuList[indexPath.row].rating,
                     country: isFiltering ?
                     filteredMenu[indexPath.row].country : menuList[indexPath.row].country,
                     category: isFiltering ?
                     filteredMenu[indexPath.row].category : menuList[indexPath.row].category,
                     delivery: isFiltering ?
                     filteredMenu[indexPath.row].delivery : menuList[indexPath.row].delivery,
                     price: isFiltering ?
                     filteredMenu[indexPath.row].price : menuList[indexPath.row].price,
                     distance: isFiltering ?
                     filteredMenu[indexPath.row].distance : menuList[indexPath.row].distance)
        cell.separatorInset = UIEdgeInsets(top: 0, left: cell.bounds.width, bottom: 0, right: 0)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        300
    }
    
}

extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty{
            isFiltering = false
        }else{
            isFiltering = true
            filteredMenu = menuList.filter({$0.name.lowercased().contains(searchText.lowercased()) || $0.category.lowercased().contains(searchText.lowercased())})
        }
        
        menuTableView.reloadData()
    }
}

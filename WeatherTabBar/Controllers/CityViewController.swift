//
//  CityViewController.swift
//  WeatherTabBar
//
//  Created by 고상원 on 2019-04-24.
//  Copyright © 2019 고상원. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {
    
    let goDetailButt: UIButton = {
        let butt = UIButton(type: .system)
        butt.translatesAutoresizingMaskIntoConstraints = false
        butt.setTitle("Go see details", for: .normal)
        butt.backgroundColor = UIColor.gray
        butt.tintColor = .white
        butt.layer.cornerRadius = 10.0
        butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        butt.addTarget(self, action: #selector(showDetailVC), for: .touchUpInside)
        return butt
    }()
    
    
    
    @objc private func showDetailVC() {
        // go to detail VC
        let detailVC = DetailViewController()
        detailVC.city = city
        detailVC.view.backgroundColor = .white
        navigationController?.pushViewController(detailVC, animated: true)
        
    }
    // UILabel -> City Name
    // UIButton -> Details
    var city: City! {
        didSet {
            tabBarItem = UITabBarItem(title: city.name, image: UIImage(named: city.icon), selectedImage: nil)
        }
    }// dependency injection (property of city) ?: here !:optional
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = city.name
        view.addSubview(goDetailButt)
        
        NSLayoutConstraint.activate([
            goDetailButt.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goDetailButt.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -150),
            goDetailButt.widthAnchor.constraint(equalToConstant: 150),
            goDetailButt.heightAnchor.constraint(equalToConstant: 50),
            ])
    }
 

}

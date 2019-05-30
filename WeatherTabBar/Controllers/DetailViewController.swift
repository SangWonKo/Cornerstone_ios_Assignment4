//
//  ViewController.swift
//  WeatherTabBar
//
//  Created by 고상원 on 2019-04-24.
//  Copyright © 2019 고상원. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var city: City!
    
    let flag: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.widthAnchor.constraint(equalToConstant: 250).isActive = true
        img.heightAnchor.constraint(equalToConstant: 150).isActive = true
        return img
    }()
    
    let countryText: UILabel = {
       let c = UILabel()
        c.translatesAutoresizingMaskIntoConstraints = false
        c.text = "Country: "
        c.font = UIFont.boldSystemFont(ofSize: 20)
        c.textColor = .blue
        return c
    }()
    
    let countryLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .black
        return lb
    }()
    
    let cityText: UILabel = {
        let c = UILabel()
        c.translatesAutoresizingMaskIntoConstraints = false
        c.text = "City: "
        c.font = UIFont.boldSystemFont(ofSize: 20)
        c.textColor = .blue
        return c
    }()
    let cityLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .black
        return lb
    }()
    let tempText: UILabel = {
        let c = UILabel()
        c.translatesAutoresizingMaskIntoConstraints = false
        c.text = "Temperature: "
        c.font = UIFont.boldSystemFont(ofSize: 20)
        c.textColor = .blue
        return c
    }()
    let tempLable: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .black
        return lb
    }()
    let summaryText: UILabel = {
        let c = UILabel()
        c.translatesAutoresizingMaskIntoConstraints = false
        c.text = "Summary: "
        c.font = UIFont.boldSystemFont(ofSize: 20)
        c.textColor = .blue
        return c
    }()
    let summaryLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .black
        return lb
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupStack()
        setCountry()
        // Do any additional setup after loading the view.
    }
    
    fileprivate func setupStack() {
        
        let stackView1 = UIStackView(arrangedSubviews: [countryText,cityText,tempText,summaryText])
        stackView1.translatesAutoresizingMaskIntoConstraints = false
        stackView1.axis = .vertical
        stackView1.spacing = 30
        
        let stackView = UIStackView(arrangedSubviews: [countryLabel,cityLabel,tempLable,summaryLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 30

        let stackViewFinal = UIStackView(arrangedSubviews: [stackView1,stackView])
        stackViewFinal.translatesAutoresizingMaskIntoConstraints = false
        stackViewFinal.axis = .horizontal
        
        let stackViewFinal1 = UIStackView(arrangedSubviews: [flag,stackViewFinal])
        stackViewFinal1.translatesAutoresizingMaskIntoConstraints = false
        stackViewFinal1.axis = .vertical
        stackViewFinal1.spacing = 30
        view.addSubview(stackViewFinal1)
        
        
        stackViewFinal1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackViewFinal1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    
    fileprivate func setCountry() {
        countryLabel.text = city.country
        cityLabel.text = city.name
        tempLable.text = "\(city.temp)"
        summaryLabel.text = city.summary
        flag.image = UIImage(named: city.flag)
        
        
    }


}


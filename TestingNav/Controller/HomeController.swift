//
//  HomeController.swift
//  Chatdraw
//
//  Created by Varian, Victor on 4/6/20.
//  Copyright © 2020 SacchirroApp. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    var delegate: HomeControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        configureNavigationBar()
    }
    
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle()
        print("Toggle menu")
    }
    
    func configureNavigationBar() {
        let imageView = UIBarButtonItem(image: UIImage(named: "gear"), style: .plain, target: self, action: #selector(handleMenuToggle))
        imageView.tintColor = .white
        
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Side Menu"
        
        navigationItem.leftBarButtonItem = imageView
    }
}

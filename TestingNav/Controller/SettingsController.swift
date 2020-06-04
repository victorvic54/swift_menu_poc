//
//  SettingsController.swift
//  TestingNav
//
//  Created by Varian, Victor on 4/6/20.
//  Copyright © 2020 SacchirroApp. All rights reserved.
//

import UIKit

class SettingsController: UIViewController {
    
    var username: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
        if let username = username {
            print("Username is \(username)")
        }
    }
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    func configureUI() {
        view.backgroundColor = .white
        
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Settings"
        navigationController?.navigationBar.barStyle = .black
    
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "gear"), style: .plain, target: self, action: #selector(handleDismiss))
    }
    
}

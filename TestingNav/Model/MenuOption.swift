//
//  MenuOption.swift
//  TestingNav
//
//  Created by Varian, Victor on 4/6/20.
//  Copyright © 2020 SacchirroApp. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    case Profile
    case Inbox
    case Notifications
    case Settings
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Inbox: return "Inbox"
        case .Notifications: return "Notifications"
        case .Settings: return "Settings"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "gear") ?? UIImage()
        case .Inbox: return UIImage(named: "questionmark_circle") ?? UIImage()
        case .Notifications: return UIImage(named: "gear") ?? UIImage()
        case .Settings: return UIImage(named: "questionmark_circle") ?? UIImage()
        }
    }
}

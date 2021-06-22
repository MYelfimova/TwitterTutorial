//
//  MainTabController.swift
//  TwitterTutorial
//
//  Created by Maria Yelfimova on 22/06/2021.
//

import UIKit
import Foundation

class MainTabController: UITabBarController {
    
    //MARK: - Properties
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }
    
    //MARK: - Helpers
    
    func configureViewControllers(){
        
        let feed = FeedController()
        let nav1 = tempateNavigationController(image: UIImage(named: "home_unselected"), rootViewController: feed)
        
        let explore = ExploreController()
        let nav2 = tempateNavigationController(image: UIImage(named: "search_unselected"), rootViewController: explore)
        
        let notifications = NotificationsController()
        let nav3 = tempateNavigationController(image: UIImage(named: "like_unselected"), rootViewController: notifications)
        
        let conversations = ConversationsController()
        let nav4 = tempateNavigationController(image: UIImage(named: "ic_mail_outline_white_2x-1"), rootViewController: conversations)
        
        self.viewControllers = [nav1, nav2, nav3, nav4]
    }

    func tempateNavigationController(image:UIImage?, rootViewController: UIViewController) -> UINavigationController {
     
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        
        return nav
    }
}

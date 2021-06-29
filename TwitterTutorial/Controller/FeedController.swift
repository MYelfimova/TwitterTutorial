//
//  FeedController.swift
//  TwitterTutorial
//
//  Created by Maria Yelfimova on 22/06/2021.
//

import UIKit
import SDWebImage

class FeedController: UIViewController {
    
    var user: User? {
        didSet{
            print("DEBUG: did set user in Feed Controller")
            configureLeftBatItem()
        }
    }
    
    //MARK: - Properties
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        let imageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        imageView.setDimensions(width: 44, height: 44)
        navigationItem.titleView = imageView
    }
    
    func configureLeftBatItem() {
        guard let user = self.user else { return }
        
        let profileImageView = UIImageView()
        profileImageView.backgroundColor = .white
        profileImageView.setDimensions(width: 36, height: 36)
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.cornerRadius = 36/2
        profileImageView.sd_setImage(with: user.profileImageUrl, completed: nil)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: profileImageView)
    }

}

//
//  ExploreController.swift
//  TwitterTutorial
//
//  Created by Maria Yelfimova on 22/06/2021.
//

import UIKit

class ExploreController: UIViewController {
    
    //MARK: - Properties
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - Helpers
    
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Explore"
    }
}

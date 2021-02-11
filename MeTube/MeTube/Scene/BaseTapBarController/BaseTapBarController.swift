//
//  BaseTapBarController.swift
//  MeTube
//
//  Created by Jh's Macbook Pro on 2021/02/11.
//

import UIKit

class BaseTapBarController: UITabBarController {

    enum ControllerName : Int {
        case home, search, channel, inbox, library
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers()
    }
    
    private func setupViewControllers(){
        
        viewControllers?.enumerated().forEach({ (index, viewController) in
            
            if let name = ControllerName.init(rawValue: index){
                switch name {
                case .home:
                    setTabbarImage(viewController: viewController, image_selected: "home-selected", image_unselected: "home-unselected",   tabBarTitle: "홈")
                case .search:
                    setTabbarImage(viewController: viewController, image_selected: "search-icon-selected", image_unselected: "search-icon-unselected",   tabBarTitle: "찾기")
                case .channel:
                    setTabbarImage(viewController: viewController, image_selected: "inbox-icon-selected", image_unselected: "inbox-icon-unselected",   tabBarTitle: "구독")
                case .inbox:
                    setTabbarImage(viewController: viewController, image_selected: "channel-selected", image_unselected: "channel-unselected",   tabBarTitle: "알림")
                case .library:
                 setTabbarImage(viewController: viewController, image_selected: "library-icon-selected", image_unselected: "library-icon-unselected",   tabBarTitle: "보관함")
                }
            }
        })
    }
    private func setTabbarImage(viewController : UIViewController, image_selected : String, image_unselected : String, tabBarTitle : String){
        viewController.tabBarItem.selectedImage = UIImage(named: image_selected)?.resize(size: .init(width: 25, height: 25))?.withRenderingMode(.alwaysOriginal)
        viewController.tabBarItem.image = UIImage(named: image_unselected)?.resize(size: .init(width: 25, height: 25))?.withRenderingMode(.alwaysOriginal)
        viewController.tabBarItem.title = tabBarTitle
    }

}

//
//  HomeViewController.swift
//  MeTube
//
//  Created by Jh's Macbook Pro on 2021/02/11.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
}

//MARK: Init
extension HomeViewController {
    private func initView() {
        setUpUI()
    }
}

extension HomeViewController {
    private func setUpUI(){
        self.profileImage.layer.cornerRadius = profileImage.frame.height / 2
    }
}

//
//  HomeViewController.swift
//  MeTube
//
//  Created by Jh's Macbook Pro on 2021/02/11.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    let viewModel : HomeViewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
}

//MARK: Init
extension HomeViewController {
    private func initView() {
        setUpUI()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

//MARK: UI setting
extension HomeViewController {
    private func setUpUI(){
        self.profileImage.layer.cornerRadius = profileImage.frame.height / 2
        self.collectionView.register(UINib(nibName: "VideoListCell", bundle: nil), forCellWithReuseIdentifier: "videoListCell")
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.videoListModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "videoListCell", for: indexPath) as? VideoListCell else { fatalError() }
        
        let data = viewModel.videoListModel[indexPath.row]
        cell.setVideoListCell(thumbnail: data.thumbnailImage, creator: data.creatorImage, title: data.videoTitle, describe: data.videoDescribeTitle)
        
        if indexPath.row == (viewModel.videoListModel.count - 1) {
            cell.seperateView.isHidden = true
        } else {
            cell.seperateView.isHidden = false
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard: UIStoryboard = UIStoryboard(name: "VideoViewController", bundle: nil)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: "VideoViewController") as? VideoViewController else { fatalError() }
        let data = viewModel.videoListModel[indexPath.row]
        viewController.paramTitle = data.videoTitle
        viewController.paramChannel = data.videoDescribeTitle
        viewController.paramCreatorImage = data.creatorImage
        viewController.modalPresentationStyle = .overCurrentContext
        present(viewController, animated: true, completion: nil)
    }
}

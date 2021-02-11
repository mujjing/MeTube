//
//  VideoViewController.swift
//  MeTube
//
//  Created by Jh's Macbook Pro on 2021/02/11.
//

import UIKit

class VideoViewController: UIViewController {

    @IBOutlet weak var dismissBtn: UIButton!
    @IBOutlet weak var channelLabel: UILabel!
    @IBOutlet weak var creatorImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    @IBOutlet weak var videoView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    var paramTitle: String?
    var paramChannel: String?
    var paramCreatorImage: String?
    
    let viewModel: VideoViewModel = VideoViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }

}

extension VideoViewController {
    private func initView() {
        setUpUI()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension VideoViewController {
    private func setUpUI() {
        creatorImage.layer.cornerRadius = creatorImage.frame.height / 2
        videoTitle.text = paramTitle
        channelLabel.text = paramChannel
        creatorImage.image = UIImage(named: paramCreatorImage ?? "")
        dismissBtn.addTarget(self, action: #selector(tapDissmissBtn), for: .touchUpInside)
    }
    
    @objc func tapDissmissBtn() {
        dismiss(animated: true, completion: nil)
    }
}

extension VideoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.videoListModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? RelativeVideoCell else { fatalError() }
        let data = viewModel.videoListModel[indexPath.row]
        cell.setRelativeVideoCell(image: data.thumbnailImage, title: data.videoTitle, describe: data.videoDescribeTitle)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

//
//  VideoListCell.swift
//  MeTube
//
//  Created by Jh's Macbook Pro on 2021/02/11.
//

import UIKit

class VideoListCell: UICollectionViewCell {

    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var creatorImage: UIImageView!
    @IBOutlet weak var videoTitleLbel: UILabel!
    @IBOutlet weak var videoDescribeLabel: UILabel!
    @IBOutlet weak var seperateView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        creatorImage.layer.cornerRadius = creatorImage.frame.height / 2
    }
    
    func setVideoListCell(thumbnail: String, creator: String, title: String, describe: String) {
        thumbnailImage.image = UIImage(named: thumbnail)
        creatorImage.image = UIImage(named: creator)
        videoTitleLbel.text = title
        videoDescribeLabel.text = describe
    }

}

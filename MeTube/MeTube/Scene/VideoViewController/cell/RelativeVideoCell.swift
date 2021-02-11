//
//  RelativeVideoCell.swift
//  MeTube
//
//  Created by Jh's Macbook Pro on 2021/02/11.
//

import UIKit

class RelativeVideoCell: UITableViewCell {

    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dectibeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setRelativeVideoCell(image: String, title: String, describe: String) {
        thumbnailImage.image = UIImage(named: image)
        titleLabel.text = title
        dectibeLabel.text = describe
    }
}

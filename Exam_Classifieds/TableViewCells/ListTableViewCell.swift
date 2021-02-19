//
//  ListTableViewCell.swift
//  Exam_Classifieds
//
//  Created by Pauleen on 2/19/21.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemPriceLabel: UILabel!
    
    var data: ListData? {
        didSet {
            itemNameLabel.text = data?.name
            itemPriceLabel.text = data?.price
            
            if let imgUrl = data?.image_urls_thumbnails.first {
                print("LOADING IMAGE...")
                print(imgUrl)
                itemImageView.getImageFromURLString(urlString: imgUrl)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

//
//  DetailsViewController.swift
//  Exam_Classifieds
//
//  Created by Pauleen on 2/20/21.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemPriceLabel: UILabel!
    
    var data: ListData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureElements()
    }
    
    func configureElements() {
        itemNameLabel.text = data?.name
        itemPriceLabel.text = data?.price
        
        if let imgUrl = data?.image_urls_thumbnails.first, let id = data?.image_ids.first {
            itemImageView.getImageFromURLString(urlString: imgUrl, id: id)
        }
    }
    
    @IBAction func closeAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

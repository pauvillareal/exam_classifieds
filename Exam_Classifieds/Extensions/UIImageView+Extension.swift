//
//  UIImageView+Extension.swift
//  Exam_Classifieds
//
//  Created by Pauleen on 2/20/21.
//

import UIKit
import AlamofireImage

extension UIImageView {
    func getImageFromURLString(urlString:String) {
        if let imgUrl = URL(string:urlString) {
            self.af.setImage(withURL: imgUrl)
        } else {
            self.image = nil
        }
    }
}

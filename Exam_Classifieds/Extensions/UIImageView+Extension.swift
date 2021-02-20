//
//  UIImageView+Extension.swift
//  Exam_Classifieds
//
//  Created by Pauleen on 2/20/21.
//

import UIKit
import AlamofireImage
import Alamofire

var imageCache = NSCache<AnyObject, AnyObject>()

extension UIImageView {
    func getImageFromURLString(urlString: String, id: String) {
        if let cacheImage = imageCache.object(forKey: id as AnyObject) as? UIImage {
            self.image = cacheImage
            return
        }
        
        AF.request(urlString).responseData { response in
            if case .success = response.result {
                if let data = response.data {
                    if let image = UIImage(data: data) {
                        self.image = image
                        imageCache.setObject(image, forKey: id as AnyObject)
                    } else {
                        self.image = nil
                    }
                }
            }
        }
    }
}

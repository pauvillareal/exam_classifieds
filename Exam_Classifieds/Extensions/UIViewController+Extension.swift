//
//  UIViewController+Extension.swift
//  Exam_Classifieds
//
//  Created by Pauleen on 2/19/21.
//

import UIKit

extension UIViewController {
    // Show activity indicator
    func showActivityIndicator() {
        self.hideActivityIndicator()
        let activityIndicatorView: UIActivityIndicatorView = UIActivityIndicatorView()
        activityIndicatorView.tag = 1
        let w = UIScreen.main.bounds.width
        let h = UIScreen.main.bounds.height
        activityIndicatorView.frame = CGRect(x:w/2,y: h/2,width: 70, height: 70)
        activityIndicatorView.layer.cornerRadius = 05
        activityIndicatorView.isOpaque = false
        activityIndicatorView.backgroundColor = UIColor(white: 0.0, alpha: 0.5)
        activityIndicatorView.style = .large
        activityIndicatorView.center = self.view.center
        activityIndicatorView.startAnimating()
        self.view.addSubview(activityIndicatorView)
    }
    
    // Hide activity indicator
    func hideActivityIndicator() {
        for subview in self.view.subviews {
            if subview.tag == 1 {
                subview.removeFromSuperview()
                return
            }
        }
    }
}

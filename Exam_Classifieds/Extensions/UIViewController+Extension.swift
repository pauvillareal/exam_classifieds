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
        let center = self.view.center
        activityIndicatorView.frame = CGRect(origin: center, size: CGSize(width: 70, height: 70))
        activityIndicatorView.layer.cornerRadius = 05
        activityIndicatorView.isOpaque = false
        activityIndicatorView.backgroundColor = UIColor(white: 0.0, alpha: 0.5)
        activityIndicatorView.style = .large
        activityIndicatorView.center = self.view.center
        activityIndicatorView.startAnimating()
        
        let window = UIApplication.shared.windows.first { $0.isKeyWindow }
        window?.addSubview(activityIndicatorView)
    }
    
    // Hide activity indicator
    func hideActivityIndicator() {
        if let window = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) {
            for subview in window.subviews {
                if subview.tag == 1 {
                    subview.removeFromSuperview()
                    return
                }
            }
        }
    }
}

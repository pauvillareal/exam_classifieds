//
//  ListModel.swift
//  Exam_Classifieds
//
//  Created by Pauleen on 2/19/21.
//

import Foundation


// MARK: - List
struct List: Decodable {
    let results: [ListData]
}

// MARK: - ListData
struct ListData: Decodable {
    let price, created_at, name, uid: String
    let image_ids, image_urls, image_urls_thumbnails: [String]

    enum CodingKeys: String, CodingKey {
        case price = "price"
        case created_at = "created_at"
        case name = "name"
        case uid = "uid"
        case image_ids = "image_ids"
        case image_urls = "image_urls"
        case image_urls_thumbnails = "image_urls_thumbnails"
    }
}

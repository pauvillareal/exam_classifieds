//
//  APIService.swift
//  Exam_Classifieds
//
//  Created by Pauleen on 2/19/21.
//

import Foundation

class APIService :  NSObject {
    private let sourcesURL = URL(string: "https://ey3f2y0nre.execute-api.us-east-1.amazonaws.com/default/dynamodb-writer")!
    
    func getClassifiedsList(completion : @escaping (List) -> ()){
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            do {
                if let json = try JSONSerialization.jsonObject(with: data!,
                                                               options: []) as? [String: Any] {
                    let jsonData = try? JSONSerialization.data(withJSONObject: json)
                    let listData = try JSONDecoder().decode(List.self, from: jsonData!)
                    completion(listData)
                }
            } catch let error {
                debugPrint(error)
            }
        }.resume()
    }
}

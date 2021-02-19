//
//  ListViewModel.swift
//  Exam_Classifieds
//
//  Created by Pauleen on 2/19/21.
//

import Foundation

class ListViewModel : NSObject {
    
    private var apiService: APIService!
    private(set) var listData: List! {
        didSet {
            self.bindListViewModelToController()
        }
    }
    
    var bindListViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.apiService = APIService()
        callFuncToGetList()
    }
    
    func callFuncToGetList() {
        self.apiService.getClassifiedsList { (listData) in
            self.listData = listData
        }
    }
}


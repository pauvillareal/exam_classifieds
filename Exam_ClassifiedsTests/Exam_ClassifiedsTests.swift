//
//  Exam_ClassifiedsTests.swift
//  Exam_ClassifiedsTests
//
//  Created by Pauleen on 2/19/21.
//

import XCTest
@testable import Exam_Classifieds

class Exam_ClassifiedsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testListWithNoData() {
        let list = List(results: [])
        XCTAssertTrue(list.results.isEmpty)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

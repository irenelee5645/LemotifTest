//
//  Lemotif_testTests.swift
//  Lemotif_testTests
//
//  Created by Irene Lee on 5/30/20.
//  Copyright © 2020 Irene Lee. All rights reserved.
//

import XCTest
@testable import Lemotif_test

class Lemotif_testTests: XCTestCase {
   

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
         var tempView :ViewController = ViewController.init()
        tempView.jsonCall_1()
        tempView.jsonDataCheck()
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

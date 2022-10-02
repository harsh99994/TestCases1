//
//  TestCases1Tests.swift
//  TestCases1Tests
//
//  Created by Harsh_Appinventiv on 04/04/22.
//

import XCTest
@testable import TestCases1

class TestCases1Tests: XCTestCase {

    var ferrari: CarsWay!
    var jeep: CarsWay!
    var honda: CarsWay!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        ferrari = CarsWay(type: .Sport, transmissionMode: .Drive)
        jeep = CarsWay(type: .OffRoad, transmissionMode: .Drive)
        honda = CarsWay(type: .Economy, transmissionMode: .Park)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        ferrari = nil
        jeep = nil
        honda = nil
    }

    func testSportFasterThanJeep() {
        let minutes = 60   // 1 start ferrari
        ferrari.start(minutes: minutes)   // 2 start jeep
        jeep.start(minutes: minutes)   // Test it
        XCTAssertTrue(ferrari.miles > jeep.miles)
    }

}

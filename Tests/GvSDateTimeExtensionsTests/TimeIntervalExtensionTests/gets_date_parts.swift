//
//  File.swift
//  
//
//  Created by Grant van Staden on 2020/02/09.
//

import Foundation
import XCTest
@testable import GvSDateTimeExtensions

class gets_date_parts: XCTestCase {
    
    func testGetsOneMinuteFrom60Seconds() {
        let actual: TimeInterval = 60
        XCTAssertEqual(1, actual.minutes)
    }
    
    func testGets59SecondsFrom59Seconds() {
        let actual: TimeInterval = 59.99
         XCTAssertEqual(0, actual.minutes)
        XCTAssertEqual(59, actual.seconds)
    }
}

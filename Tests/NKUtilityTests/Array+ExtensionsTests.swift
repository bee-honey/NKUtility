//
//  File.swift
//  
//
//  Created by Naveen Keerthy on 6/14/24.
//

import XCTest

final class Array_ExtensionsTests: XCTestCase {
    
    func test_safeIndex_withValidIndex() {
        let numbers = [1,2,3,4,5]
        let num1 = numbers[safeIndex: 2]
        XCTAssertNotNil(num1)
    }
    
    func test_safeIndex_withNilValue() {
        let numbers = [1,2,3,4,5]
        let num1 = numbers[safeIndex: 10]
        XCTAssertNil(num1)
    }
    
    func test_safeIndex_withNegNilValue() {
        let numbers = [1,2,3,4,5]
        let num1 = numbers[safeIndex: -1]
        XCTAssertNil(num1)
    }
}

//
//  LSPTestCase.swift
//  DesignPatternTests
//
//  Created by Julio Cezar Kenji Miyahira on 21/12/22.
//

import XCTest

internal final class LSPTestCase: XCTestCase {
    
    override internal func setUp() {
        super.setUp()
    }
    
    override internal func tearDown() {
        super.tearDown()
    }
    
    internal func setAndMeasure(_ rc: Rectangle) {
        rc.width = 3
        rc.height = 4
        print("Expected area to be 12 but got \(rc.area)")
    }
    
    internal func testLSPWrong() {
        let rec = Rectangle()
        setAndMeasure(rec)
        
        let square = Square()
        setAndMeasure(square)
    }
    
    internal func testLSPCorrect() {
        let rec = Rectangle(_width: 4, _height: 3)
        print("\(rec.area)")
        
        let square = Square(_width: 4, _height: 4)
        print("\(square.area)")
    }
}

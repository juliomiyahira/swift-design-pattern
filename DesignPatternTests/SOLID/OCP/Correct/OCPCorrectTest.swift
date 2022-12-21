//
//  OCPCorrectTest.swift
//  DesignPatternTests
//
//  Created by Julio Cezar Kenji Miyahira on 25/11/22.
//

import XCTest

internal final class OCPCorrectTest:XCTestCase {
    
    override internal func setUp() {
        super.setUp()
    }
    
    override class func tearDown() {
        super.tearDown()
    }
    
    func testFilter() {
        let p1 = Product(name: "laranja", color: .red, size: .small)
        let p2 = Product(name: "uva", color: .green, size: .medium)
        let p3 = Product(name: "goiaba", color: .blue, size: .yuge)
        let p4 = Product(name: "maca", color: .green, size: .large)
        
        let products = [p1, p2, p3, p4]
        
        let bf = BetterFilter()
        print("Green products (new):")
        
        for p in bf.filter(products, ColorSpecification(.green)) {
            print("\(p.name) is a Green")
        }
        
        for p in bf.filter(products, SizeSpecification(size: .yuge)) {
            print("\(p.name) is a Yuge")
        }
        
        for p in bf.filter(
            products,
            AndSpecification(
                first: ColorSpecification(.green),
                second: SizeSpecification(size: .large))) {
            print(p)
        }
    }
}

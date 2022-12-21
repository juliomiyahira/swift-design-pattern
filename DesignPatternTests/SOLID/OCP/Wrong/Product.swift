//
//  Product.swift
//  DesignPatternTests
//
//  Created by Julio Cezar Kenji Miyahira on 24/10/22.
//

import Foundation
import XCTest

enum Color {

    case red
    case green
    case blue

}

enum Size {

    case small
    case medium
    case large
    case yuge

}

internal class Product: CustomStringConvertible {

    var name: String
    var color: Color
    var size: Size
 
    internal init(name: String, color: Color, size: Size) {
        self.name = name
        self.color = color
        self.size = size
    }
    
    var description: String {
        return ("\(name) - \(color) - \(size)")
    }

}

internal class ProductFilter {
    
    internal func filterByColor(products: [Product], color: Color) -> [Product] {
        return products.filter( { $0.color == color } )
    }
    
    internal func filterBySize(products: [Product], size: Size) -> [Product] {
        return products.filter( { $0.size  == size } )
    }
}

internal class OCPWrongTest: XCTestCase {
  
    override internal func setUp() {
        super.setUp()
    }
    
    override internal func tearDown() {
        super.tearDown()
    }
    
    internal func testMain() {
        let p1 = Product(name: "laranja", color: .red, size: .small)
        let p2 = Product(name: "uva", color: .green, size: .medium)
        let p3 = Product(name: "goiaba", color: .blue, size: .yuge)
        let p4 = Product(name: "maca", color: .green, size: .large)
        
        let products = [p1, p2, p3, p4]
        let filter = ProductFilter()
        let filteredProducts = filter.filterByColor(products: products, color: .green)
        print(filteredProducts)
    }
}

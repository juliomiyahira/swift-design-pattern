//
//  ColorSpecification.swift
//  DesignPatternTests
//
//  Created by Julio Cezar Kenji Miyahira on 25/11/22.
//

import Foundation

internal class ColorSpecification: Specification {

    typealias T = Product
    let color: Color
    
    internal init(_ color: Color) {
        self.color = color
    }
    
    internal func isSatisfied(_ item: Product) -> Bool {
        return item.color == color
    }
    
}

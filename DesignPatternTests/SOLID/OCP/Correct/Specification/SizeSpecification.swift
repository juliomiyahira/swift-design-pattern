//
//  SizeSpecification.swift
//  DesignPatternTests
//
//  Created by Julio Cezar Kenji Miyahira on 25/11/22.
//

internal class SizeSpecification: Specification {
    typealias T = Product
    internal var size: Size
    
    internal init(size: Size) {
        self.size = size
    }
    
    func isSatisfied(_ item: Product) -> Bool {
        return item.size == size
    }

}

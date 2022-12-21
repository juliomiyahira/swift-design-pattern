//
//  AndSpecification.swift
//  DesignPatternTests
//
//  Created by Julio Cezar Kenji Miyahira on 25/11/22.
//

internal class AndSpecification<T, SpecA: Specification, SpecB: Specification>: Specification
where SpecA.T == SpecB.T, T == SpecA.T, T == SpecB.T {

   
    let first: SpecA
    let second: SpecB
    
    internal init(first: SpecA, second: SpecB) {
        self.first = first
        self.second = second
    }
    
    func isSatisfied(_ item: T) -> Bool {
        return first.isSatisfied(item) && second.isSatisfied(item)
    }

}

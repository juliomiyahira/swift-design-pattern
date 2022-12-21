//
//  BetterFilter.swift
//  DesignPatternTests
//
//  Created by Julio Cezar Kenji Miyahira on 25/11/22.
//

internal class BetterFilter: Filter {

    typealias T = Product

    internal func filter<Spec: Specification>(_ items: [T], _ spec: Spec) -> [T] where T == Spec.T {
        var result = [Product]()
        for i in items {
            if spec.isSatisfied(i) {
                result.append(i)
            }
        }
        return result
    }

}

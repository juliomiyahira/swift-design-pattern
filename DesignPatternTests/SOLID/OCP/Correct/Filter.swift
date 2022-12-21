//
//  Filter.swift
//  DesignPatternTests
//
//  Created by Julio Cezar Kenji Miyahira on 25/11/22.
//

protocol Filter {
    associatedtype T
    func filter<Spec: Specification>(_ items: [T], _ spec: Spec) -> [T]
    where Spec.T == T;
}

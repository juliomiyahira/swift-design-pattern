//
//  Specification.swift
//  DesignPatternTests
//
//  Created by Julio Cezar Kenji Miyahira on 25/11/22.
//

protocol Specification {
    associatedtype T
    func isSatisfied(_ item: T) -> Bool
}

//
//  Square.swift
//  DesignPatternTests
//
//  Created by Julio Cezar Kenji Miyahira on 21/12/22.
//

import Foundation

internal class Square: Rectangle {
    
    override var width: Int {
        get { return _width }
        set(value) {
            _width = value
            _height = value
        }
    }
    
    override var height: Int {
        get { return _height }
        set(value) {
            _height = value
            _width = value
        }
    }
}

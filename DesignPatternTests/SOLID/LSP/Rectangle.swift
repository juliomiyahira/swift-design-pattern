//
//  Demo.swift
//  DesignPatternTests
//
//  Created by Julio Cezar Kenji Miyahira on 21/12/22.
//

import Foundation

internal class Rectangle: CustomStringConvertible {

    internal var _width = 0
    internal var _height = 0
    
    internal init(_width: Int = 0, _height: Int = 0) {
        self._width = _width
        self._height = _height
    }
    
    internal var width: Int {
        get { return _width }
        set(value) { _width = value}
    }
    
    internal var height: Int {
        get { return _height}
        set(value) { _height = value}
    }
    
    var description: String {
        return "\(_width) - \(_height)"
    }
    
    var area: Int {
        return width * height
    }

}

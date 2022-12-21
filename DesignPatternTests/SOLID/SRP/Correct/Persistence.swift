//
//  Persistence.swift
//  DesignPatternTests
//
//  Created by Julio Cezar Kenji Miyahira on 24/10/22.
//

internal struct Persistence {
    
        
    internal func save(_ jornalCorrect: JournalCorrect, _ filename: String, _override: Bool = false) {
        print(" \(jornalCorrect) file save with name: \(filename)")
    }

}

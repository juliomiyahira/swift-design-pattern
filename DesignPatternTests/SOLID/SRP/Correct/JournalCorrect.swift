//
//  JournalCorrect.swift
//  DesignPatternTests
//
//  Created by Julio Cezar Kenji Miyahira on 24/10/22.
//

import Foundation
import XCTest

internal class JournalCorrect: CustomStringConvertible {
    
    var entries = [String]()
    var count = 0
    
    func addEntry(_ text: String) -> Int {
        count += 1
        entries.append("\(count): \(text)")
        return count - 1
    }
    
    func removeEntry(_ index: Int) {
        entries.remove(at: index)
        
    }
    
    var description: String {
        return entries.joined(separator: "\n")
    }

}

class SRPJournalCorrectTest: XCTestCase {
    
    override internal func setUp() {
        super.setUp()
    }
    
    override internal func tearDown() {
        super.tearDown()
    }
    
    internal func testExecSRP() {
        let j = JournalCorrect()
        let _ = j.addEntry("i cried today")
        let bug = j.addEntry("I ate a bug")
        print(j)
        j.removeEntry(bug)
        
        let persistence = Persistence()
        persistence.save(j, "teste_de_persistencia.file")
    }
    
}

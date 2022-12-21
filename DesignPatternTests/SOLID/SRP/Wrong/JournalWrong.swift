//
//  SRP.swift
//  DesignPatternTests
//
//  Created by Julio Cezar Kenji Miyahira on 03/10/22.
//

import Foundation
import XCTest

class JournalWrong: CustomStringConvertible {
    
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
    
    internal func save(_ filename: String, _ override: Bool = false) {
        // save to fale
    }
    
    internal func load(_ filename: String) {}
    internal func load(_ uri: URL) {}
    
}


class SRPJournalWrongTest: XCTestCase {
    
    override internal func setUp() {
        super.setUp()
    }
    
    override internal func tearDown() {
        super.tearDown()
    }
    
    internal func testExecSRP() {
        let j = JournalWrong()
        let _ = j.addEntry("i cried today")
        let bug = j.addEntry("I ate a bug")
        print(j)
        j.removeEntry(bug)
        print("===")
        print(j)
        j.save("teste")
    }
    
}

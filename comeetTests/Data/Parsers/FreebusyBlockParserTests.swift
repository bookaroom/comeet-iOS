//
//  FreebusyBlockParserTests.swift
//  comeet
//
//  Created by Ricardo Contreras on 3/25/17.
//  Copyright © 2017 teamawesome. All rights reserved.
//

import XCTest
@testable import comeet

class FreebusyBlockParserTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testInvalidFreebusyBlock() {
        let invalidAFreeBusyDict = ["Nothing" : "Value"]
        let freeBusyBlock = FreebusyBlockParser.parseFreebusyBlock(freebusyBlockDict: invalidAFreeBusyDict)
        
        XCTAssert(freeBusyBlock == nil)
    }
    
    func testValidAmenity() {
        let validAFreeBusyDict = [FreebusyBlockParser.Constants.statusKey : "busy",
                                    FreebusyBlockParser.Constants.startKey : "2017-06-22 16:00:00",
                                    FreebusyBlockParser.Constants.endKey : "2017-06-22 16:30:00"]
        let freeBusyBlock = FreebusyBlockParser.parseFreebusyBlock(freebusyBlockDict: validAFreeBusyDict)
        
        XCTAssert(freeBusyBlock != nil)
    }
    
    func testInvalidTime() {
        let validAFreeBusyDict = [FreebusyBlockParser.Constants.statusKey : "busy",
                                  FreebusyBlockParser.Constants.startKey : "2017-06-22 17:00:00",
                                  FreebusyBlockParser.Constants.endKey : "2017-06-22 16:30:00"]
        let freeBusyBlock = FreebusyBlockParser.parseFreebusyBlock(freebusyBlockDict: validAFreeBusyDict)
        
        XCTAssert(freeBusyBlock == nil)
    }
    
    func testInvalidTimeFormat() {
        let validAFreeBusyDict = [FreebusyBlockParser.Constants.statusKey : "busy",
                                  FreebusyBlockParser.Constants.startKey : "2017-06-22 16:00",
                                  FreebusyBlockParser.Constants.endKey : "2017-06-22 16:30"]
        let freeBusyBlock = FreebusyBlockParser.parseFreebusyBlock(freebusyBlockDict: validAFreeBusyDict)
        
        XCTAssert(freeBusyBlock == nil)
    }
    
    func testInvalidStatus() {
        let validAFreeBusyDict = [FreebusyBlockParser.Constants.statusKey : "none",
                                  FreebusyBlockParser.Constants.startKey : "2017-06-22 16:00:00",
                                  FreebusyBlockParser.Constants.endKey : "2017-06-22 16:30:00"]
        let freeBusyBlock = FreebusyBlockParser.parseFreebusyBlock(freebusyBlockDict: validAFreeBusyDict)
        
        XCTAssert(freeBusyBlock == nil)
    }
}

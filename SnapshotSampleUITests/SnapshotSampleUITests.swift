//
//  SnapshotSampleUITests.swift
//  SnapshotSampleUITests
//
//  Created by Tomoyuki Ito on 2018/04/04.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import XCTest

class SnapshotSampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        app.buttons["ホーム"].tap()
        snapshot("0_home")
        app.buttons["連載"].tap()
        snapshot("1_serial")
        app.buttons["人気"].tap()
        snapshot("2_popular")
        app.buttons["雑誌"].tap()
        snapshot("3_magazine")
        app.buttons["設定"].tap()
        snapshot("4_setting")
    }
    
}

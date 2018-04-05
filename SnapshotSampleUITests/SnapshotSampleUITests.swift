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
        snapshot("00_home")
        app.buttons["特集へ"].tap()
        snapshot("01_feature")
        app.buttons["詳細へ"].tap()
        snapshot("02_comicdetail")
        app.buttons["連載"].tap()
        snapshot("10_serial")
        app.buttons["人気"].tap()
        snapshot("20_popular")
        app.buttons["ランキングへ"].tap()
        snapshot("21_ranking")
        app.buttons["雑誌"].tap()
        snapshot("30_magazine")
        app.buttons["設定"].tap()
        snapshot("40_setting")
        app.buttons["コイン履歴へ"].tap()
        snapshot("41_coinhistory")
        app.buttons["雑誌"].tap()
        app.buttons["チケット購入へ"].tap()
        snapshot("50_buyticket")
        app.buttons["コイン購入へ"].tap()
        snapshot("51_cointicket")
        app.buttons["Back"].tap()
        app.buttons["閉じる"].tap()
    }
    
}

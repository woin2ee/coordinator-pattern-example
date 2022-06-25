//
//  CoordinatorPatternExampleUITests.swift
//  CoordinatorPatternExampleUITests
//
//  Created by Jaewon on 2022/06/25.
//

import XCTest

class CoordinatorPatternExampleUITests: XCTestCase {

    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        app = XCUIApplication()
        
        continueAfterFailure = false
        
        app.launch()
    }

    override func tearDownWithError() throws {
    }

    func test() {
        let firstButton = app.buttons["Move First"]
        let secondButton = app.buttons["Move Second"]
        let thirdButton = app.buttons["Move Third"]
        
        let firstLabel = app.staticTexts["Move First"]
        let secondLabel = app.staticTexts["Move Second"]
        let thirdLabel = app.staticTexts["Move Third"]
        
        firstButton.tap()
        
        XCTAssertTrue(firstLabel.exists)
        XCTAssertTrue(secondLabel.exists)
        XCTAssertTrue(thirdLabel.exists)
        
//        app.navigationBars["CoordinatorPatternExample.FirstView"].buttons["Back"].tap()
        
                
    }
    
    func testPerformance() {
        measure(
            metrics: [
                XCTMemoryMetric()
            ],
            options: {
                let options = XCTMeasureOptions()
                options.iterationCount = 100000
                return options
            }()
        ) {
            app.buttons["Move First"].tap()
            app.navigationBars["CoordinatorPatternExample.FirstView"].buttons["Back"].tap()
        }
    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}

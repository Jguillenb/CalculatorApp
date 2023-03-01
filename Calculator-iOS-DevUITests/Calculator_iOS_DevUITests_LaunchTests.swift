//
//  Calculator_iOS_DevUITests_LaunchTests.swift
//  Calculator-iOS-DevUITests
//
//  Created by Konstantin Cherkashin on 17.10.2022.
//  Copyright © 2022 Grid Dynamics. All rights reserved.
//

import XCTest

class Calculator_iOS_DevUITests_UpdLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
        try super.setUpWithError()
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}

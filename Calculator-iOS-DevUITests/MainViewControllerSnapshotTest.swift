//
//  MainViewControllerSnapshotTest.swift
//  Calculator-iOS-DevUITests
//
//  Created by Jorge Guillén on 20/10/22.
//  Copyright © 2022 Grid Dynamics. All rights reserved.
//

import XCTest
import SnapshotTesting
// @testable import Calculator_iOS_Dev

class MainViewControllerSnapshotTest: XCTestCase {
    
    var app: XCUIApplication!
    
    var vc: UIViewController!
//    var vc: MainViewController! = UIStoryboard(name: "MainViewController", bundle: nil)
//        .instantiateViewController(withIdentifier: "MainViewController") as?  MainViewController
    
    

    override func tearDownWithError() throws {
       // vc = nil
        super.tearDown()
        
    }
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
//        // vc = UIApplication.shared.keyWindow?.rootViewController
//        let keyWindow = UIApplication.shared.connectedScenes
//                .filter({$0.activationState == .foregroundActive})
//                .compactMap({$0 as? UIWindowScene})
//                .first?.windows
//                .filter({$0.isKeyWindow}).first
//        vc = keyWindow?.rootViewController
        vc = UIStoryboard(name: "MainViewController", bundle: nil).instantiateViewController(withIdentifier: "MainViewController")
      //  isRecording = true
        
//        vc = UIStoryboard(name: "MainViewController", bundle: nil)
//            .instantiateViewController(withIdentifier: "MainViewController") as? MainViewController
    }

//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
    
    // iPhone 8
    func testLightiPhone8L() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .light)
 //       isRecording = true
        assertSnapshot(matching: vc,
               as: .image(on: .iPhone8(.landscape), traits: traitmode))

    }
    func testDarkiPphone8L() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .dark)
 //       isRecording = true
        assertSnapshot(matching: vc,
               as: .image(on: .iPhone8(.landscape), traits: traitmode))

    }
    
    func testLightiPhone8P() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .light)
 //       isRecording = true
        assertSnapshot(matching: vc,
               as: .image(on: .iPhone8(.portrait), traits: traitmode))

    }
    
    func testDarkiPhone8P() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .dark)
 //       isRecording = true
        assertSnapshot(matching: vc,
               as: .image(on: .iPhone8(.portrait), traits: traitmode))

    }
    
    // iPhoneX
    
    func testLightModeiPhoneXP() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .light)
        assertSnapshot(matching: vc,
               as: .image(on: .iPhoneX(.portrait), traits: traitmode))
    }
    
    func testDarkModeiPhoneXP() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .dark)
        assertSnapshot(matching: vc,
               as: .image(on: .iPhoneX(.portrait), traits: traitmode))
    }
    
    func testDarkModeiPhoneXL() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .dark)
        assertSnapshot(matching: vc,
               as: .image(on: .iPhoneX(.landscape), traits: traitmode))
    }
    
    func testLightModeiPhoneXL() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .light)
        assertSnapshot(matching: vc,
               as: .image(on: .iPhoneX(.landscape), traits: traitmode))
    }
    
//    // iPhone12ProMax
//    func testLightModeiPhone12ProMaxP() throws {
//        let traitmode = UITraitCollection(userInterfaceStyle: .light)
//        assertSnapshot(matching: vc,
//               as: .image(on: .iPhone12ProMax(.portrait), traits: traitmode))
//    }
//
//    func testDarkModeiPhone12ProMaxP() throws {
//        let traitmode = UITraitCollection(userInterfaceStyle: .dark)
//        assertSnapshot(matching: vc,
//               as: .image(on: .iPhone12ProMax(.portrait), traits: traitmode))
//    }
//
//    func testDarkModeiPhone12ProMaxL() throws {
//        let traitmode = UITraitCollection(userInterfaceStyle: .dark)
//        assertSnapshot(matching: vc,
//               as: .image(on: .iPhone12ProMax(.landscape), traits: traitmode))
//    }
//
//    func testLightModeiPhone12ProMaxL() throws {
//        let traitmode = UITraitCollection(userInterfaceStyle: .light)
//        assertSnapshot(matching: vc,
//               as: .image(on: .iPhone12ProMax(.landscape), traits: traitmode))
//    }
    // iPhone8Plus
    func testLightModeiPhone8PlusP() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .light)
        assertSnapshot(matching: vc,
               as: .image(on: .iPhone8Plus(.portrait), traits: traitmode))
    }
    
    func testDarkModeiPhone8PlusP() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .dark)
        assertSnapshot(matching: vc,
               as: .image(on: .iPhone8Plus(.portrait), traits: traitmode))
    }
    
    func testDarkModeiPhone8PlusL() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .dark)
        assertSnapshot(matching: vc,
               as: .image(on: .iPhone8Plus(.landscape), traits: traitmode))
    }
    
    func testLightModeiPhone8PlusL() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .light)
        assertSnapshot(matching: vc,
               as: .image(on: .iPhone8Plus(.landscape), traits: traitmode))
    }
    // iPhone8Plus
    func testLightModeiPhoneXsMaxP() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .light)
        assertSnapshot(matching: vc,
               as: .image(on: .iPhoneXsMax(.portrait), traits: traitmode))
    }
    
    func testDarkModeiPhoneXsMaxP() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .dark)
        assertSnapshot(matching: vc,
               as: .image(on: .iPhoneXsMax(.portrait), traits: traitmode))
    }
    
    func testDarkModeXsMaxL() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .dark)
        assertSnapshot(matching: vc,
               as: .image(on: .iPhoneXsMax(.landscape), traits: traitmode))
    }
    
    func testLightModeXsMaxL() throws {
        let traitmode = UITraitCollection(userInterfaceStyle: .light)
        assertSnapshot(matching: vc,
               as: .image(on: .iPhoneXsMax(.landscape), traits: traitmode))
    }
    
}

//
//  SelfieStoreTest.swift
//  SelfiegramTests
//
//  Created by Yu-Chiang Kuo on 2019/2/1.
//  Copyright © 2019 Yu-Chiang Kuo. All rights reserved.
//
import XCTest
import UIKit
@testable import Selfiegram

class SelfieStoreTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func createImage(text: String) -> UIImage {
        UIGraphicsBeginImageContext(CGSize(width: 100, height: 100))
        defer {
            UIGraphicsEndImageContext()
        }
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        label.font = UIFont.systemFont(ofSize: 10)
        label.text = text
        label.drawHierarchy(in: label.frame, afterScreenUpdates: true)
        
        return UIGraphicsGetImageFromCurrentImageContext()!
    }
    
    func testCreatingSelfie() {
        let selfieTitle = "Create Test Selfie"
        let newSelfie = Selfie(title: selfieTitle)
        
        try? SelfieStore.shared.save(selfie: newSelfie)
        
    }

}

//
//  FirstViewControllerTests.swift
//  DailyReminderTests
//
//  Created by Michael Charland on 2019-04-26.
//  Copyright © 2019 charland. All rights reserved.
//

import XCTest
@testable import DailyReminder
@testable import SpacedRepetition

class FirstViewControllerTests: XCTestCase {

    func testPopulateBothNotSet() {
        var questions = [Question]()
        questions.append(Question(withTitle: "a"))
        questions.append(Question(withTitle: "b"))

        let svc = SecondViewController()
        svc.populateData()

        XCTAssertEqual(svc.questonData[0].title, "a")
        XCTAssertEqual(svc.questonData[1].title, "b")
    }
}

//
//  ShowViewController.swift
//  DailyReminder
//
//  Created by Michael Charland on 2019-03-24.
//  Copyright © 2019 charland. All rights reserved.
//

import Foundation
import UIKit
import SpacedRepetition

class ShowViewController: UIViewController {

    @IBOutlet weak var partLabel: UILabel!
    @IBOutlet weak var sectionTextView: UITextView!
    @IBOutlet weak var descriptionTextView: UITextView!

    private var dateShown: Date!
    var questions = Questions()
    private var datas = [String: Data]()

    override func viewDidLoad() {
        super.viewDidLoad()
        dateShown = Date()
        loadData()
        showPrinciple()
        NotificationCenter.default.addObserver(self, selector: #selector(updateView), name: UIApplication.willEnterForegroundNotification, object: nil)
    }

    func loadData() {
        datas = WinFriendsAndInfluencePeopleData.getValues()

        let keys = datas.map { k, _ in
            Question(title: k)
        }
        questions.add(questions: keys)
    }

    func showPrinciple() {
        if let current = questions.getCurrentQuestion(), let data = datas[current.title] {
            partLabel.text = data.part
            sectionTextView.text = data.section
            descriptionTextView.text = data.description
            descriptionTextView.alpha = 0
            questions.correctAnswer()
        }
    }

    @objc func updateView() {
        let today = Date()
        if dateShown.isDifferentDay(as: today) {
            dateShown = today
            showPrinciple()
        }
    }

    @IBAction func showDescription(_ sender: Any) {
        if descriptionTextView.alpha == 0 {
            descriptionTextView.alpha = 1
        } else {
            descriptionTextView.alpha = 0
        }
    }

    @IBAction func nextButton(_ sender: Any) {
        _ = questions.getNextQuestion()
        showPrinciple()
    }
}

extension Date {
    /// Returns true if two dates don't belong to the same day.
    func isDifferentDay(as other: Date) -> Bool {
        return Calendar.current.isDate(self, inSameDayAs: other) == false
    }
}


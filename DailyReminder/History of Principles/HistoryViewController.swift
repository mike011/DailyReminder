//
//  HistoryViewController.swift
//  DailyReminder
//
//  Created by Michael Charland on 2019-03-24.
//  Copyright © 2019 charland. All rights reserved.
//

import UIKit
import SpacedRepetition

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var questonData: [Question]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        questonData = Questions().allQuestionData
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questonData.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45.0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: QuestionTableViewCell.reuseIdentifier, for: indexPath) as? QuestionTableViewCell else {
            fatalError("Unexpected Index Path")
        }
        cell.amountLabel.text = String(questonData[indexPath.item].timesAsked)
        cell.questionLabel.text = questonData[indexPath.item].title

        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd, yyyy"
        if let date = questonData[indexPath.item].lastTimeAnswered {
            cell.lastSeenLabel.text = formatter.string(from: date)
        } else {
            cell.lastSeenLabel.text = "Never"
        }
        return cell
    }
}


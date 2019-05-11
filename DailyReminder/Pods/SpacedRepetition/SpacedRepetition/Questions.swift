//
//  Questions.swift
//  SpacedRepetition
//
//  Created by Michael Charland on 2019-04-06.
//  Copyright © 2019 charland. All rights reserved.
//

import Foundation

/// Manages everything to do with questions
public class Questions {

    private var questions = [Question]()
    private var currentQuestionIndex = 0

    public init() {
        let defaults = UserDefaults.standard

        if let savedQuestions = defaults.object(forKey: "questions") as? Data {
            if let decodedQuestions = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(savedQuestions) as? [Question] {
                questions = decodedQuestions ?? [Question]()
            }
        }
    }

    public func load(questions loadedQuestions: [String]) {
        if questions.isEmpty {
            for test in loadedQuestions {
                questions.append(Question(withTitle: test))
            }
        }
    }

    public func correctAnswer() {
        questions[currentQuestionIndex].handleRightAnswer()
        save()
        questions.remove(at: currentQuestionIndex)
    }

    public func wrongAnswer() {
        questions[currentQuestionIndex].handleWrongAnswer()
        save()
    }

    public func getNextQuestion() -> String? {

        guard questions.count > 0 else {
            return nil
        }

        var newIndex = currentQuestionIndex
        while newIndex == currentQuestionIndex && questions.count != 1 {
            newIndex = Int.random(in: 0 ..< questions.count)
        }
        currentQuestionIndex = newIndex
        return questions[currentQuestionIndex].question
    }

    func save() {
        if let savedData = try? NSKeyedArchiver.archivedData(withRootObject: questions, requiringSecureCoding: false) {
            let defaults = UserDefaults.standard
            defaults.set(savedData, forKey: "questions")
        }
    }
}

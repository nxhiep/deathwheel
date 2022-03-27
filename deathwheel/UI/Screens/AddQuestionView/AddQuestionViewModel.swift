//
//  AddQuestionViewModel.swift
//  deathwheel
//
//  Created by Hiep Nguyen on 26/03/2022.
//

import Foundation

class AddQuestionViewModel: ObservableObject {
    
    @Published var isLoading = false
    @Published var questions: [Question] = []
    
    func getQuestions() {
        self.isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.questions.removeAll()
            self.questions.append(Question.init(_id: "q1", question: "Question 1", options: [Option.init(_id: "o1", text: "Option1", weight: 1), Option.init(_id: "o5", text: "Option2", weight: 1)], index: 0))
            self.questions.append(Question.init(_id: "q2", question: "Question 2", options: [Option.init(_id: "o2", text: "Option1", weight: 1), Option.init(_id: "o6", text: "Option2", weight: 2)], index: 1))
            self.questions.append(Question.init(_id: "q3", question: "Question 3", options: [Option.init(_id: "o3", text: "Option1", weight: 1), Option.init(_id: "o7", text: "Option2", weight: 2)], index: 2))
            self.questions.append(Question.init(_id: "q4", question: "Question 4", options: [Option.init(_id: "o4", text: "Option1", weight: 1), Option.init(_id: "o8", text: "Option2", weight: 1)], index: 3))
            self.isLoading = false
        }
    }
}

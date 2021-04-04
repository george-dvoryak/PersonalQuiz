//
//  Question.swift
//  PersonalQuiz
//
//  Created by George Kook on 05.04.2021.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую еду вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(title: "Стейк", type: .dog),
                    Answer(title: "Рыба", type: .cat),
                    Answer(title: "Морковь", type: .rabbit),
                    Answer(title: "Кукуруза", type: .turtle)
                ]
            ),
            Question(title: "Что вам нравится больше?",
                     type: .multiple,
                     answers: [
                        Answer(title: "Плавать", type: .dog),
                        Answer(title: "Спать", type: .cat),
                        Answer(title: "Размножаться", type: .rabbit),
                        Answer(title: "Есть", type: .turtle)
                ]
            ),
            Question(title: "Любите ли вы поездки на машине?",
                     type: .ranged ,
                     answers: [
                        Answer(title: "Обожаю", type: .dog),
                        Answer(title: "Ненавижу", type: .cat),
                        Answer(title: "Нервничаю", type: .rabbit),
                        Answer(title: "Не умею", type: .turtle)
                ]
            )
        ]
    }
}

struct Answer {
    let title: String
    let type: AnimalType
}
enum ResponseType {
    case single
    case multiple
    case ranged
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐈"
    case rabbit =  "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        
        case .dog:
            return "Sobaka kusaetsya"
        case .cat:
            return "Kot plohoi"
        case .rabbit:
            return "Bistriy potsan"
        case .turtle:
            return "SlowMo Dude"
        }
    }
}

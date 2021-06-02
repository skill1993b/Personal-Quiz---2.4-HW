//
//  AnswersViewController.swift
//  Personal Quiz
//
//  Created by Никита Журавлев on 31.05.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var youAreRawCalueLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // 1. Массив ответов
    var answers: [Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 4. Избавиться от кнопки Бэк в навигейшене
        navigationItem.hidesBackButton = true
        
        setText()
    }
    
    // 2. Определить наиболее часто встречаемый вид животного
    func findFrequentAnimal(answers: [Answer]) -> AnimalType{
        var dog = 0, cat = 0, rabbit = 0, turtle = 0
        
        for animal in answers {
            switch animal.type{
            case .dog:
                dog += 1
            case .cat:
                cat += 1
            case .rabbit:
                cat += 1
            case .turtle:
                turtle += 1
            }
        }
        
        let array = [dog, cat, rabbit, turtle]
        let indexOfMax = array.firstIndex(of: array.max() ?? 1)
        switch indexOfMax {
        case 0:
            return AnimalType.dog
        case 1:
            return AnimalType.cat
        case 2:
            return AnimalType.rabbit
        case 3:
            return AnimalType.turtle
        default:
            return AnimalType.cat
        }
    }
    
    // 3. Отобразить результат
    func setText() {
        youAreRawCalueLabel.text = "Вы - " + String(findFrequentAnimal(answers: answers).rawValue) + "!"
        descriptionLabel.text = findFrequentAnimal(answers: answers).definition
    }
    
}

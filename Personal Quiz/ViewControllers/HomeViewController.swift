//
//  HomeViewController.swift
//  Personal Quiz
//
//  Created by Никита Журавлев on 31.05.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    let quetions = Question.getQuestions()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController, let vc = navigationVC.topViewController as? QuestionsViewController else { return }
        vc.questions = quetions
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) { }
    
}

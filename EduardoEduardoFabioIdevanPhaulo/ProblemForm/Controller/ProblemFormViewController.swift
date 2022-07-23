//
//  ProblemFormViewController.swift
//  EduardoEduardoFabioIdevanPhaulo
//
//  Created by Eduardo Fernando Dias on 20/07/22.
//

import UIKit

class ProblemFormViewController: UIViewController {

    @IBOutlet weak var textFieldProblemName: UITextField!
    @IBOutlet weak var textFieldAddress: UITextField!
    @IBOutlet weak var textFieldData: UITextField!
    @IBOutlet weak var textViewProblemDescription: UITextView!
    @IBOutlet weak var buttonSave: UIButton!

    var problem: Problem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let problem = problem {
            textFieldProblemName.text = problem.problemName
            textFieldAddress.text = problem.localization
            textFieldData.text = problem.registryDate
            textViewProblemDescription.text = problem.descriptionProblem
            title  = "Edição do Problema"
            buttonSave.setTitle("Atualizar", for: .normal)
            
        }

        
    }
    
    @IBAction func saveProblem(_ sender: UIButton) {
        if problem == nil{
            problem = Problem(context: context)
        }
        problem?.problemName = textFieldProblemName.text
        problem?.localization = textFieldAddress.text
        problem?.registryDate = textFieldData.text
        problem?.descriptionProblem = textViewProblemDescription.text
        
        do{
          try context.save()
            navigationController?.popViewController(animated: true)
        }catch{
            print(error)
        }
    }
    
}

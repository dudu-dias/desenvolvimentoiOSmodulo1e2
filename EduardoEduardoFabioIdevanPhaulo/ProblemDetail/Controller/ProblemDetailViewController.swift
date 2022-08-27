//
//  ProblemDetailViewController.swift
//  EduardoEduardoFabioIdevanPhaulo
//
//  Created by Eduardo Fernando Dias on 21/08/22.
//

import UIKit

class ProblemDetailViewController: UIViewController {

    
    @IBOutlet weak var LabelProblem: UILabel!
    
    
    @IBOutlet weak var LabelAdress: UILabel!
    
    
    @IBOutlet weak var LabelData: UILabel!
    
    
    @IBOutlet weak var LabelDescription: UILabel!
    
    var problem: Problem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ProblemFormViewController
        vc?.problem = problem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        LabelProblem.text = problem.problemName
        LabelData.text = problem.registryDate
        LabelDescription.text = problem.descriptionProblem
        LabelAdress.text = problem.localization
    }
    

}

//
//  ProblemListingTableViewCell.swift
//  EduardoEduardoFabioIdevanPhaulo
//
//  Created by Eduardo Fernando Dias on 23/07/22.
//

import UIKit

class ProblemListingTableViewCell: UITableViewCell {

    @IBOutlet weak var labelProblemName: UILabel!
    
    @IBOutlet weak var labelProblemData: UILabel!
    func configure(with problem: Problem){
        labelProblemName.text = problem.problemName
        labelProblemData.text = problem.registryDate
    }

}

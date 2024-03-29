//
//  ProblemListingTableViewController.swift
//  EduardoEduardoFabioIdevanPhaulo
//
//  Created by Eduardo Fernando Dias on 18/07/22.
//

import UIKit
import CoreData

class ProblemListingTableViewController: UITableViewController {
    
    lazy var arrayProblemas: [Problem]? = []
    
    lazy var fetchedResultController: NSFetchedResultsController<Problem> = {
        let fetchRequest: NSFetchRequest<Problem> = Problem.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "descriptionProblem", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        let fetchedResultController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        fetchedResultController.delegate = self
        return fetchedResultController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadProblem()
      
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? ProblemDetailViewController,
              let indexPath = tableView.indexPathForSelectedRow else {return}
        vc.problem = fetchedResultController.object(at: indexPath)
    }
    
    private func loadProblem(){
        do{
           try fetchedResultController.performFetch()
            //arrayProblemas = fetchedResultController.fetchedObjects
                
        }catch{
           print(error)
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fetchedResultController.fetchedObjects?.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ProblemListingTableViewCell else{
            return UITableViewCell()
        }
        
        let problem = fetchedResultController.object(at: indexPath)
        cell.configure(with:problem)
        return cell
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == .delete{
            let problem = fetchedResultController.object(at: indexPath)
            context.delete(problem)
            try? context.save()
        }
    }
    
    /*
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let acaoDeletar = UIContextualAction(style: .destructive, title: "Apagar") {
            action, view, boolAction in
            boolAction(true)
            self.arrayProblemas?.remove(at: indexPath.row)
            tableView.performBatchUpdates {
                tableView.deleteRows(at: [indexPath], with: .fade)
            } completion: { completed in
                print("Terminou de excluir")
            }
        }
        return UISwipeActionsConfiguration(actions: [acaoDeletar])
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ProblemListingTableViewController: NSFetchedResultsControllerDelegate{
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.reloadData()
    }
}

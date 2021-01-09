//
//  MainTableViewController.swift
//  TeamApp
//
//  Created by Misha on 04.01.2021.
//

import UIKit

class ModulesTableViewController: UITableViewController {
    
    // MARK: - Properties
    let modules = DataManager.shared.modules.sorted()
    let modulesAndLectionsMap = DataManager.shared.modulesAndLectionsMap
    var lections: [String] = []

    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        if indexPath.row > 1 {
            showAlert()
        } else {
            guard segue.identifier == "lectionsSegue" else { return }
            guard let destination = segue.destination as? LectionsTableViewController else { return }
            destination.lections = Array(modulesAndLectionsMap[modules[indexPath.row]] ?? [])
            destination.moduleName = modules[indexPath.row]
        }
    }
    
    @IBAction func unwind(forModuleTVC segue: UIStoryboardSegue) {}

    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return modules.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = modules[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    // MARK: - Private Methods
    private func showAlert() {
        let alert = UIAlertController(title: "Access denied.", message: "", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okButton)
        
        present(alert, animated: true, completion: nil)
    }

}


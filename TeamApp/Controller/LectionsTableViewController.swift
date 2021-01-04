//
//  LectionsTableViewController.swift
//  TeamApp
//
//  Created by Misha on 04.01.2021.
//

import UIKit

class LectionsTableViewController: UITableViewController {
    
    // MARK: - Properties
    var lections: [String] = []
    var moduleName: String = ""
    
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        if (moduleName == "2. Мои первые приложения на Swift") && (indexPath.row > 8) {
            showAlert()
        } else {
            guard segue.identifier == "testSegue" else { return }
            guard let destination = segue.destination as? TestViewController else { return }
            destination.moduleName = self.moduleName
            destination.lection = lections[indexPath.row]
        }
        
    }
    
    @IBAction func unwind(forLectionsTVC segue: UIStoryboardSegue) {}

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lections.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.lineBreakMode = .byWordWrapping
        cell.textLabel?.text = lections[indexPath.row]

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

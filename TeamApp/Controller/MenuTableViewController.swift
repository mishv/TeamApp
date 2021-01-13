//
//  MenuTableViewController.swift
//  TeamApp
//
//  Created by Misha on 13.01.2021.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    let menuSections = MainMenu.allCases

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    // MARK: - Navigation
    @IBAction func unwind(forMenuTVC segue: UIStoryboardSegue) {}
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menuSections.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = menuSections[indexPath.row].rawValue

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            performSegue(withIdentifier: "modulesSegue", sender: nil)
        } else if indexPath.row == 1 {
            performSegue(withIdentifier: "coursesSegue", sender: nil)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
    


}

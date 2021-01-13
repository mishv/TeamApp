//
//  MenuTableViewController.swift
//  TeamApp
//
//  Created by Misha on 13.01.2021.
//

import UIKit

enum URLs: String {
    case URLone = "https://swiftbook.ru/wp-content/uploads/api/api_courses"
}

class MenuTableViewController: UITableViewController {
    
    let menuSections = MainMenu.allCases

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "coursesSegue" {
//            let coursesVC = segue.destination as! CoursesTableViewController
//            coursesVC.fetchCourses()
//        }
//    }
    
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
            showCourses()

        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    private func showCourses() {
        guard let url = URL(string: URLs.URLone.rawValue) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            do {
                let course = try JSONDecoder().decode([Course].self, from: data)
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()

    }
    
    
    
    


}

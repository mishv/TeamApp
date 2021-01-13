//
//  CoursesTableViewController.swift
//  TeamApp
//
//  Created by Misha on 13.01.2021.
//

import UIKit

class CoursesTableViewController: UITableViewController {
    
    var courses: [Course] = []

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
        fetchCourses()
        
        


    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CourseCell
        let course = courses[indexPath.row]

        cell.configure(with: course)

        return cell
    }
    
}

extension CoursesTableViewController {
    func fetchCourses() {
        guard let url = URL(string: URLs.URLone.rawValue) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            do {
                self.courses = try JSONDecoder().decode([Course].self, from: data)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
}

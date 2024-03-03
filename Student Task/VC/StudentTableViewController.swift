//
//  ViewController.swift
//  Student Task
//
//  Created by Feras Alshadad on 03/03/2024.
//

import UIKit
import SnapKit
class StudentTableViewController: UITableViewController {
    
    var student: [Student] = [Student(studentName: "Feras", studentGpa: 3.76, studentImage: "images"),
                              Student(studentName: "Faisal", studentGpa: 4.00, studentImage: "Unknown")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return student.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let student = student[indexPath.row]
        
        cell.textLabel?.text = "Student Name: \(student.studentName) - GPA: \(student.studentGpa)"
        cell.imageView?.image = UIImage(named: student.studentImage)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = StudentDetailViewController()
        
        let selectedStudent = student[indexPath.row]
        
        detailVC.student = selectedStudent
        
        navigationController?.pushViewController(detailVC, animated: true)
        
    }

}


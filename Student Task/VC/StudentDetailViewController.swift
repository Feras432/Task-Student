//
//  DetailViewController.swift
//  Student Task
//
//  Created by Feras Alshadad on 03/03/2024.
//

import UIKit
import SnapKit
class StudentDetailViewController: UIViewController {
    
    var student: Student?

    private let studentNameLabel = UILabel()
    private let studentGpaLabel = UILabel()
    private let studentImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(studentNameLabel)
        view.addSubview(studentGpaLabel)
        view.addSubview(studentImageView)
        
        setupViews()
        setupLayout()
        configureWithBankAccount()
    }

        private func setupViews() {
            
            view.backgroundColor = .white

            studentNameLabel.font = .systemFont(ofSize: 16, weight: .bold)
            studentGpaLabel.font = .systemFont(ofSize: 16, weight: .bold)
            
    }
    
    private func setupLayout() {
        
        studentImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(100)
            
        }
        
        studentNameLabel.snp.makeConstraints { make in
            make.top.equalTo(studentImageView.snp.bottom).offset(13)
            make.centerX.equalToSuperview()
            
        }
        
        studentGpaLabel.snp.makeConstraints { make in
            make.top.equalTo(studentNameLabel.snp.bottom).offset(13)
            make.centerX.equalToSuperview()
            
        }
    }
    
    private func configureWithBankAccount() {
            
        studentNameLabel.text = student?.studentName
        studentGpaLabel.text = "\(student?.studentGpa ?? 0.0)"
        studentImageView.image = UIImage(named: student?.studentImage ?? "Image Name")
        
    }
    

}

//
//  ViewController.swift
//  Protocol Composition
//
//  Created by Coditas on 14/10/21.
//  Copyright © 2021 Coditas. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet weak var tableView: UITableView!
    
    var employeeData = [Employee]()
    var empViewModel = EmployeeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        empViewModel.dataFetch { (data) in
            self.employeeData = data
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = employeeData[indexPath.row].first_name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let newVC = storyboard?.instantiateViewController(identifier: "DetailsViewController") as! DetailsViewController
        newVC.empData = employeeData
        newVC.index = indexPath.row
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    
//    func abc (to xyz : firstName & Email){
//        let a = xyz.first_name
//        print("a",a)
//        
//        for i in employeeData{
//            let b = Employee(first_name: i.first_name, email: i.email, id: i.id, last_name: i.last_name, avatar: i.avatar)
//
//        }
//    }
//    
    
}




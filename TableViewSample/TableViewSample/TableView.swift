//
//  ViewController.swift
//  TableViewSample
//
//  Created by Jaweria Khan on 13/09/2022.
//

//

import Foundation
import UIKit


class tableView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    //let tableViewData = Array(repeating: "Item", count: 2)
    
    var tableViewData = ["Device A", "Device B", "Device C"]
    @IBOutlet weak var tableView: UITableView!
    
  
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        
    
        
    }
    
    
    override open var shouldAutorotate: Bool {
        return false
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("numberOfRows")
        return self.tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("cellforRow")
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell",for: indexPath)
        cell.textLabel?.text = self.tableViewData[indexPath.row]
        
       return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("celltapped")
        self.performSegue(withIdentifier: "detailViewSegue", sender: self)
    }
    

}


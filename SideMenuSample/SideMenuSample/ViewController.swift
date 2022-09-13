//
//  ViewController.swift
//  SideMenuSample
//
//  Created by Jaweria Khan on 15/08/2022.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var menuTableView: UITableView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet var swipeGestureRecognizer: UISwipeGestureRecognizer!
    
    //turn off when screen is loaded initially
    var menuWindow = false
    
    //set the size of screen regarding any device
    let screen = UIScreen.main.bounds
    
    var home = CGAffineTransform()
    
    var menu: [menudata] = [
        
        menudata(title: "Treadmill", segue: "TreadmillSegue", systemImage: "heart.fill"),
        menudata(title: "RowringMachine", segue: "RowringMachineSegue"),
        menudata(title: "CycleSpin", segue: "CycleSpinSegue"),
        menudata(title: "Ellipticle", segue: "EllipticleSegue")
        
    ]
    
    struct menudata {
        
        var title = String()
        var segue = String()
        var systemImage = String()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuTableView.dataSource = self
        menuTableView.delegate = self
        menuTableView.backgroundColor = .clear
        
        home = containerView.transform
        
    




    }
    
    
    
    func showMenuWindow() {
        
        self.containerView.layer.cornerRadius = 60
        self.containerView.layer.cornerRadius = self.containerView.layer.cornerRadius
        //how far to Right the view will move when swipe
        let x = screen.width * 0.8
        let originalPosition = self.containerView.transform
        let scaledPostion = originalPosition.scaledBy(x: 0.8, y: 0.8)
        //fixing y-axis, moving x-axis to half of screen
        let scaledTransform = scaledPostion.translatedBy(x: x, y: 0)
        UIView.animate(withDuration: 1) {
            self.containerView.transform = scaledTransform
            
        }
        
    }
    
    func hideMenuWindow() {
        UIView.animate(withDuration: 0.7 ) {
            self.containerView.transform  = self.home
            self.containerView.layer.cornerRadius = 40
            self.backgroundImage.layer.cornerRadius = self.containerView.layer.cornerRadius
        }
        
    }
    
    @IBAction func showMenuWindow(_ sender: UISwipeGestureRecognizer) {
        
        if menuWindow == false && swipeGestureRecognizer.direction == .right {
            showMenuWindow()
            menuWindow = true
        }
        
    }
    
    
    @IBAction func hideMenuWindow(_ sender: UITapGestureRecognizer) {
        
        if menuWindow == true {
            hideMenuWindow()
            menuWindow = false
        }
    }
    
    
    
    
    
}



extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! tableViewCell
        cell.backgroundColor = .clear
        cell.descriptionLabel.text = menu[indexPath.row].title
        cell .descriptionLabel.textColor = .black
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let indexPath = tableView.indexPathForSelectedRow {
            
            let currentCell = (tableView.cellForRow(at: indexPath) ?? UITableViewCell()) as UITableViewCell
            
            currentCell.alpha = 0.5
            UIView.animate(withDuration: 4) {
                currentCell.alpha = 1
            }
            //segue
            self.parent?.performSegue(withIdentifier: menu[indexPath.row].segue, sender: self)
            
        }
    }
}

class tableViewCell : UITableViewCell {
    
    @IBOutlet var descriptionLabel: UILabel!
    
    
}


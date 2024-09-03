//
//  ColorsTableViewController.swift
//  UIKit_Intro
//
//  Created by Sovit Thapa on 2024-08-29.
//

import UIKit

class ColorsTableViewController: UIViewController{
    
    var colors: [UIColor] = []
    
    enum cells {
        static let colorCell = "ColorCell"
    }
    
    enum segues {
        static let toDetail = "ToColorDetailVC"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loopColors()
        // Do any additional setup after loading the view.
    }
    
    func loopColors(){
        for _ in 0..<50{
            colors.append(.random())
        }
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ColorsDetailsViewController
        destinationVC.color = sender as? UIColor
    }
    
}

extension ColorsTableViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cells.colorCell) else{
            return UITableViewCell()
        }
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: segues.toDetail, sender: color)
    }
}

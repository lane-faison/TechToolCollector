//
//  ViewController.swift
//  TechToolCollector
//
//  Created by Lane Faison on 4/29/17.
//  Copyright © 2017 Lane Faison. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var techs : [Technology] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do {
            techs = try context.fetch(Technology.fetchRequest())
            tableView.reloadData() // ensures table is reloaded after adding a new picture
        } catch {
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return techs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let tech = techs[indexPath.row]
        cell.textLabel?.text = tech.title
        cell.imageView?.image = UIImage(data: tech.image as! Data)
        return cell
    }
}


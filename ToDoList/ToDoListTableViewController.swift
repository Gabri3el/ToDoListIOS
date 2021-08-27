//
//  ToDoListTableViewController.swift
//  ToDoList
//
//  Created by Gabriel on 24/08/21.
//

import UIKit

class ToDoListTableViewController: UITableViewController {
    
    var items: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            let item = ListUserDefault()
            item.remove(indice: indexPath.row)
            reloadToDoList();
        }
    }
    
    func reloadToDoList(){
        let list = ListUserDefault()
        items = list.listItem()
        tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        reloadToDoList();
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        cell.textLabel?.text = items[indexPath.row]

        return cell
    }
    

}

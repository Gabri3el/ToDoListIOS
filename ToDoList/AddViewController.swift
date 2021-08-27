//
//  AddViewController.swift
//  ToDoList
//
//  Created by Gabriel on 24/08/21.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var listAdd: UITextField!
    
    @IBAction func addItem(_ sender: Any) {
        if let textUser = listAdd.text{
            let item = ListUserDefault()
            item.save(item: textUser)
            
            listAdd.text = ""
            print(item.listItem())
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}

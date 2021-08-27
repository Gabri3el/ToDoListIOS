//
//  ListUserDefault.swift
//  ToDoList
//
//  Created by Gabriel on 24/08/21.
//

import UIKit

class ListUserDefault {
    
    let KeyOfList = "toDoList"
    var items: [String] = []
    
    func remove(indice: Int){
        items = listItem()
        items.remove(at: indice)
        UserDefaults.standard.setValue(items, forKey: KeyOfList)
    }
    
    
    func save(item: String){
        //recovery Data of array
        
        items = listItem()
        
        // save item
        items.append(item)
        UserDefaults.standard.setValue(items, forKey: KeyOfList)
        
        
    }
    
    func listItem() -> Array<String> {
        let data = UserDefaults.standard.object(forKey: KeyOfList)
       
        if(data != nil){
            return data as! Array<String>
        }else{
            return []
        }
    }
}

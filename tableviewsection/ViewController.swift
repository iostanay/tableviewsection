//
//  ViewController.swift
//  tableviewsection
//ss
//  Created by Tanay Bhattacharjee on 15/04/18.
//  Copyright © 2018 Tanay Bhattacharjee. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    @IBOutlet weak var mtbl: UITableView!

    //MARK: HEADER SECTION  ARRAY
    let headerTitles = ["A", "B","C"]
    
    
    //MARK: ROWS  ARRAY
    let data = [["Apple", "Abbb", "Acc","Akkk", "Ajjj", "Ammm"], ["BA", "BB", "BC"],["CAT", "CAA", "CMM","CLL"]]
    
    
    
    //MARK: Tableview datasource method
    func numberOfSections(in tableView: UITableView) -> Int{
        return data.count
    }
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
 return data[section].count
    
    
    
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        
        
        let cell = mtbl.dequeueReusableCell(withIdentifier: "abc") as! usercell
         let cellText = data[indexPath.section][indexPath.row]
        
    cell.lbl.text =  cellText
    cell.lbl.textColor = UIColor.black
    cell.lbl.backgroundColor = UIColor.red
        return cell
    }
  
    
 
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section < headerTitles.count {
            return headerTitles[section]
        }
        
        return nil
    }
    
    
    
    //MARK: TABELVIEW Delegat Method
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
         let cellText = data[indexPath.section][indexPath.row]
        print(cellText)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
     
    }

  


}


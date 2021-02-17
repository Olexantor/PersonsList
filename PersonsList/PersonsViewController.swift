//
//  PersonsViewController.swift
//  PersonsList
//
//  Created by Александр on 17.02.2021.
//

import UIKit

class PersonsViewController: UITableViewController {
    
    var persons = Person.getPersonInfo()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content

        return cell
    }



    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    

    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}

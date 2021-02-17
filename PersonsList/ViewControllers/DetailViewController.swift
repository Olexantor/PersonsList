//
//  DetailViewController.swift
//  PersonsList
//
//  Created by Александр on 17.02.2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    //MARK: IB Outlets
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    //MARK: Public Properties
    var personDetail: Person!
    
    //MARK: Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = personDetail.fullName
        phoneLabel.text = "Phone: \(personDetail.phoneNumber)"
        emailLabel.text = "E-mail: \(personDetail.email)"
    }
}

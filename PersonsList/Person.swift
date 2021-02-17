//
//  Person.swift
//  PersonsList
//
//  Created by Александр on 17.02.2021.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonInfo() -> [Person] {
        let dataManager = DataManager()
        var persons: [Person] = []

        for _ in 1...dataManager.names.count {
            
            persons.append(Person(
                name: dataManager.names[
                    Int.random(in: 1...dataManager.names.count)
                ],
                surname: dataManager.surnames[
                    Int.random(in: 1...dataManager.surnames.count)
                ],
                phoneNumber: dataManager.phoneNumbers[
                    Int.random(in: 1...dataManager.phoneNumbers.count)
                ],
                email: dataManager.emails[
                    Int.random(in: 1...dataManager.emails.count)
                ]
            ))
        }
        return persons
    }
    
}

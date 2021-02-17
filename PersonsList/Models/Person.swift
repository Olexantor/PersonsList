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
        
        let names = dataManager.names.shuffled()
        let surnames = dataManager.surnames.shuffled()
        let phoneNumbers = dataManager.phoneNumbers.shuffled()
        let emails = dataManager.emails.shuffled()

        for index in 0...dataManager.names.count - 1 {
            let person = Person(name: names[index],
                                surname: surnames[index],
                                phoneNumber: phoneNumbers[index],
                                email: emails[index])
            persons.append(person)
        }
        return persons
    }
}

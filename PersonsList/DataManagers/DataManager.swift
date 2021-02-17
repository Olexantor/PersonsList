//
//  DataManager.swift
//  PersonsList
//
//  Created by Александр on 17.02.2021.
//

import Foundation

class DataManager {
    let names = ["Nicola",
                 "Bruce",
                 "John",
                 "Ted",
                 "Steven",
                 "Carl",
                 "Aaron",
                 "Sharon",
                 "Tim",
                 "Allan"]
    
    let surnames = ["Smith",
                    "Robertson",
                    "Williams",
                    "Jankin",
                    "Pennyworth",
                    "Black",
                    "Isaacson",
                    "Butler",
                    "Dow",
                    "Murphy"]
    
    var phoneNumbers: [String] {
        var phones: [String] = []
        for _ in 1...10 {
            phones.append( String(Int.random(in: 89000000000...89999999999)))
        }
        return phones
    }
    
    let emails = ["qqq@mail.ru", "www@list.ru", "eee@bk.ru", "rrr@gmail.com", "sss@yandex.ru", "ddd@rambler.ru", "fff@bing.ru", "zzz@yahoo.com", "xxx@icloud.com", "ccc@swiftbook.ru",]
        
}

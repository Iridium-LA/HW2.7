//
//  Person.swift
//  HW2.7
//
//  Created by Игорь Зигура on 09.09.2020.
//  Copyright © 2020 Zigura. All rights reserved.
//

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    init(name: String, surname: String, phoneNumber: String, email: String) {
        self.name = name
        self.surname = surname
        self.phoneNumber = phoneNumber
        self.email = email
    }
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

class DataManager {
    static var names = ["Bruce",
                 "Juhn",
                 "Steven",
                 "Aaron",
                 "Tim",
                 "Allan",
                 "Sharon",
                 "Ted",
                 "Carl",
                 "Nicola"]
    
    static var surnames = ["Butler",
                    "Smith",
                    "Black",
                    "Robertson",
                    "Murphy",
                    "Williams",
                    "Isaacson",
                    "Jankin",
                    "Pennyworth",
                    "Dow"]
    
    static var phoneNumbers = ["432349845",
                        "825654134",
                        "562880225",
                        "287185656",
                        "645898473",
                        "459477625",
                        "112233445",
                        "223344556",
                        "334455667",
                        "445566778"]
    
    static var emails = ["jjjj@mail.ru",
                  "eeee@mail.ru",
                  "mmmm@mail.ru",
                  "aaaa@mail.ru",
                  "wwww@mail.ru",
                  "qqqq@mail.ru",
                  "bbbb@mail.ru",
                  "yyyy@mail.ru",
                  "ssss@mail.ru",
                  "gggg@mail.ru"]
}
 
extension DataManager {
    static func getPersonsList() -> [Person] {
        var persons: [Person] = []
        let lastIndexOfRecords = names.count - 1
        
        names.shuffle()
        surnames.shuffle()
        phoneNumbers.shuffle()
        emails.shuffle()
        
        for index in 0...lastIndexOfRecords {
            let person: Person = Person.init(name: names[index],
                                             surname: surnames[index],
                                             phoneNumber: phoneNumbers[index],
                                             email: emails[index])
            persons.append(person)
        }
        
        return persons
    }
}

//
//  ModelClasses.swift
//  TestCoreData
//
//  Created by arun kumar on 12/01/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ModelClasses: NSObject {

}
struct User: Codable{
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
}
struct Welcome: Codable {
    let branch: Branch
    let subject: [Subject]
    
    enum CodingKeys: String, CodingKey {
        case branch
        case subject = "Subject"
    }
}

struct Branch: Codable {
    let subject, totalStudents, totalBooks: Int
    
    enum CodingKeys: String, CodingKey {
        case subject
        case totalStudents = "total_students"
        case totalBooks = "total_books"
    }
}

struct Subject: Codable {
    let subjectID: Int
    let name: String
    let pratical: Bool
    let praticalDays: [String]
    
    enum CodingKeys: String, CodingKey {
        case subjectID = "subject_id"
        case name, pratical
        case praticalDays = "pratical_days"
    }
}

//
//  Todo.swift
//  Todos
//
//  Created by Aditya Chugh on 2018-02-01.
//  Copyright © 2018 TEAM STUDY. All rights reserved.
//

import Foundation

class Todo {
    var title: String!
    var date: Date!
    
    init(title: String, date: Date) {
        self.title = title;
        self.date = date;
    }
}

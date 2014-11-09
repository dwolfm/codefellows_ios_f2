//
//  Person.swift
//  roster
//
//  Created by nacnud on 11/2/14.
//  Copyright (c) 2014 nacnud. All rights reserved.
//

import Foundation

//
//  People.swift
//  haha
//
//  Created by nacnud on 10/29/14.
//  Copyright (c) 2014 nacnud. All rights reserved.
//

import Foundation

class Person{
    var firstName:String
    var lastName:String
    var isStudent:Bool
    
    init(){
        firstName = ""
        lastName = ""
        isStudent = false
    }
    
    init(firstName:String,lastName:String, isStudent:Bool){
        self.firstName = firstName
        self.lastName = lastName
        self.isStudent = isStudent
    }
    
    func getFirst() -> String {
        return self.firstName
    }
    
    func getLast() -> String {
        return self.lastName
    }
    
    func fullName() -> String {
        return self.firstName + " " + self.lastName
        
    }
    
    func setFirst(firstName:String){
        self.firstName = firstName
    }
    
    func changeStudentStatus(){
        self.isStudent = !self.isStudent
    }
    
    func getIsStudent() -> Bool {
        return self.isStudent
    }
    
    func getTuple() -> (String, String, Bool) {
        return (self.firstName, self.lastName, self.isStudent)
    }
    
}


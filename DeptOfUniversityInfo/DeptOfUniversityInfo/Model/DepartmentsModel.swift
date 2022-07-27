//
//  Departments.swift
//  DeptOfUniversityInfo
//
//  Created by Matt Caulder on 7/27/22.
//

import Foundation

struct Departments: Hashable, Codable {
    let deptName: String
    let subjects: [String]
    let numberOfTeachers: Int
    let numberOfStudents: Int
    let numberOfPublicationsPerYr: Int
    enum CodingKeys:String,CodingKey{
        case numberOfPublicationsPerYr = "numberOfpublicationsPerYr"
        case deptName, subjects,numberOfTeachers,numberOfStudents
    }
}
struct subjects:Hashable,Codable {
    let digitalElectronics: String
    let DSP: String
    let networkEngg: String
    let microwaveEngg: String
    let dataStructure: String
    let networking: String
    let OOPs: String
    let controlSys: String
    let powerElectronics: String
    let electromagnetics: String
    let staticsAndDynamics: String
    let materialsEngg: String
    let solidMechanics: String
    
    enum CodingKeys:String,CodingKey{
        case digitalElectronics = "Digital Electronics"
        case networkEngg = "Network Engg"
        case microwaveEngg = "Microwave Engg"
        case dataStructure = "Data Structure"
        case networking = "Networking"
        case controlSys = "Control Sys"
        case powerElectronics = "Power Electronics"
        case electromagnetics = "Electromagnetics"
        case staticsAndDynamics = "Statics and Dynamics"
        case materialsEngg = "Materials Engg"
        case solidMechanics = "Solid Mechanics"
        case DSP,OOPs
    }
}

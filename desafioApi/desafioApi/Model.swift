//
//  Model.swift
//  desafioApi
//
//  Created by Student10 on 25/05/23.
//

import Foundation

struct Deco: Codable{
    var info : Info
    var results : [RiMo]
}

struct Info: Codable{
    let count : Int?
    let pages : Int?
    let next : String?
    let prev : String?
}

struct Origin: Codable{
    let name: String?
    let gender: String?
}

struct Location: Codable{
    let name: String?
    let url: String?
}


struct RiMo: Codable, Identifiable{
    let id: Int
    let name : String
    let status : String?
    let species : String?
    let type : String?
    let gender : String?
    let origin : Origin
    let location : Location
    let image : String?
    let episode : [String]?
    let url : String?
    let created : String?
}

//
//  Location.swift
//  desafioMaps
//
//  Created by Student10 on 23/05/23.
//

import Foundation
import MapKit

struct Location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

let locations = [
    Location(name: "Belo Horizonte",
         coordinate: CLLocationCoordinate2D(latitude: -19.924557, longitude: -43.991597),
            flag: "https://static.preparaenem.com/2021/09/bandeira-belo-horizonte.jpg",
            description: "Bh eh nos"),

    Location(name: "Sao Paulo",
             coordinate: CLLocationCoordinate2D(latitude: -23.6824124, longitude: -46.5952992),
            flag: "https://http2.mlstatic.com/D_NQ_NP_614056-MLB25760634235_072017-O.jpg",
            description: "Sao paulo fjeonfi aonefaine aofienaofein"),
    
    Location(name: "NewYork",
             coordinate: CLLocationCoordinate2D(latitude: 40.6970192, longitude: -74.3093281),
             flag: "",
             description: "New york aoiheaueh"),
    
    Location(name: "Pitangui",
             coordinate: CLLocationCoordinate2D(latitude: -19.682607, longitude: -44.9083914),
            flag:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6A3miEiVAjhP0Rw2R3xkUVJcQAIrEAi0Bv2m4mJ1sYg&s",
            description: "CIDADE DO LIPIN")
]

//
//  Musica.swift
//  DesafioNav
//
//  Created by Student10 on 22/05/23.
//

import Foundation

struct Musicas : Identifiable{
    var id: Int
    var nome: String
    var artista : String
    var capa : String
    
}

var arrayMusicas = [
    Musicas(id: 1, nome: "Eu", artista: "Djonga, Coyote Beatz",
            capa: "https://conteudo.imguol.com.br/c/entretenimento/98/2021/03/13/a-capa-do-novo-disco-de-djonga-nu-1615647203504_v2_1x1.jpg"),
    
    Musicas(id: 2, nome: "Vampiro", artista: "Matue, WIU, Teto",
            capa:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_3nPUw6OmJ1GEL8kFvLj4Du2DEsrt1wDZXg&usqp=CAU"),
    
    Musicas(id: 3, nome: "Freio da Blazer", artista: "L7NNON, Ajaxx",
            capa:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQluDyrHZnqyzL3kcsyc_kiaNV7XcK1QGcO0A&usqp=CAU"),
    
    Musicas(id: 4, nome: "Coracao de Gelo", artista: "WIU",
            capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOtG3RYKshJuvXAimkPg4r10fdaGhC1deUIA&usqp=CAU"),
    
    Musicas(id: 5, nome: "X1", artista: "MC Cabelinho, Dallass",
            capa:
            "https://portalpopline.com.br/wp-content/uploads/2022/10/mc-cabelinho-x1.jpg"),
    
    Musicas(id: 6, nome: "Hino dos Mlks", artista: "BIN, Orichi, Mc Daniel, Caio Passos,...",
            capa:
                "https://lastfm.freetls.fastly.net/i/u/ar0/1bee7b17cb15ec6c8b0bc2569e3019b1.jpg"),
    
    Musicas(id: 7, nome: "Eu", artista: "Djonga, Coyote Beatz",
            capa: "https://conteudo.imguol.com.br/c/entretenimento/98/2021/03/13/a-capa-do-novo-disco-de-djonga-nu-1615647203504_v2_1x1.jpg"),
    
    Musicas(id: 8, nome: "Vampiro", artista: "Matue, WIU, Teto",
            capa:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_3nPUw6OmJ1GEL8kFvLj4Du2DEsrt1wDZXg&usqp=CAU"),
    
    Musicas(id: 9, nome: "Freio da Blazer", artista: "L7NNON, Ajaxx",
            capa:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQluDyrHZnqyzL3kcsyc_kiaNV7XcK1QGcO0A&usqp=CAU"),
    
    Musicas(id: 10, nome: "Coracao de Gelo", artista: "WIU",
            capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOtG3RYKshJuvXAimkPg4r10fdaGhC1deUIA&usqp=CAU"),
    
    Musicas(id: 11, nome: "X1", artista: "MC Cabelinho, Dallass",
            capa:
            "https://portalpopline.com.br/wp-content/uploads/2022/10/mc-cabelinho-x1.jpg"),
    
    Musicas(id: 12, nome: "Hino dos Mlks", artista: "BIN, Orichi, Mc Daniel, Caio Passos,...",
            capa:
                "https://lastfm.freetls.fastly.net/i/u/ar0/1bee7b17cb15ec6c8b0bc2569e3019b1.jpg")
]


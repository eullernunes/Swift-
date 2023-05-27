//
//  ViewModel.swift
//  desafioApi
//
//  Created by Student10 on 25/05/23.
//

import Foundation

class ViewModel : ObservableObject{
    @Published var chars : [RiMo] = []
    
    
    //A funcao fetch() e responsavel por fazer uma solicitacao de rede para recuperar dados de uma API. Ela cria e verifica se a criacao do URL foi bem-sucedida. Caso contrario a funcao retorna imediatamente
    func fetch(){
        
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else{
            return
        }
        
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do{
                let parsed = try JSONDecoder().decode(Deco.self, from : data)
                
                DispatchQueue.main.async {
                    self?.chars = parsed.results
                }
                
            } catch {
                print(error)
            }
            
        }
        
        task.resume()
    }
}


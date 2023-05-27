//
//  ContentView.swift
//  desafioApi
//
//  Created by Student10 on 25/05/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.green, .black],
                               startPoint: .top,
                               endPoint: .center).edgesIgnoringSafeArea(.all)
                VStack(spacing: 40){
                    AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQABofEEFpoOe06VuEMPKUUTBmOp7lwPEO-0w&usqp=CAU")) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 180, height: 180)
                    
                    ScrollView{
                        
                        ForEach(viewModel.chars) { personagem in
                            NavigationLink(destination: CharView(personagemSelecionado: personagem)){
                                HStack{
                                    AsyncImage(url: URL(string: personagem.image!)) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 100, height: 100)
                                    .padding(.leading, 10)
                                    
                                    
                                    Text(personagem.name)
                                        .foregroundColor(.white)
                                        .font(.title2)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                
                                
                            }
                            
                        }
                        
                    }
                    
                }
                .onAppear(){
                    viewModel.fetch()
                }
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

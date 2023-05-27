//
//  ContentView.swift
//  DesafioNav
//
//  Created by Student10 on 22/05/23.
//

import SwiftUI
import Foundation

struct ContentView: View {
    var body: some View {
        NavigationStack{
            
            ZStack{
                LinearGradient(colors: [.purple, .black],
                               startPoint: .top,
                               endPoint: .center).edgesIgnoringSafeArea(.all)
                ScrollView{
                    VStack{
                        
                        AsyncImage(url: URL(string: "https://i.pinimg.com/550x/31/45/61/31456144569fc751b670b306f36f849a.jpg")) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 200, height: 200)
                        .padding(.top, 80)
                        
                        Text("EullerFM")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                        
                        HStack{
                            HStack{
                                AsyncImage(url: URL(string: "https://i.pinimg.com/550x/31/45/61/31456144569fc751b670b306f36f849a.jpg")) { image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: 40, height: 40)
                                .padding()
                                
                                
                                Text("Playlist Nova")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundColor(.white)
                                
                            }
                        }
                        
                        
                        ForEach(arrayMusicas){ musica in
                            
                            NavigationLink(destination: TelaMusicaView(musicaSelecionada : musica)){
                                
                                HStack(spacing: 10){
                                    
                                    AsyncImage(url: URL(string: musica.capa)){ image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 80, height: 80, alignment: .leading)
                                    
                                    VStack(spacing: 10){
                                        Text(musica.nome)
                                            .foregroundColor(.white)
                                            .font(.title2)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .lineLimit(1)
                                        
                                        Text(musica.artista)
                                            .foregroundColor(.white)
                                            .font(.title3)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .lineLimit(1)
                                        
                                    }
                                    
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        
                        Text("Sugeridos")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.vertical, 10)
                        
                        ScrollView(.horizontal){
                            HStack{
                                VStack{
                                    AsyncImage(url: URL(string: "https://i.pinimg.com/550x/31/45/61/31456144569fc751b670b306f36f849a.jpg")) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 180, height: 180)
                                    Text("EullerPlaylist")
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                    
                                    
                                    
                                }
                                
                                VStack{
                                    AsyncImage(url: URL(string: "https://i.pinimg.com/550x/31/45/61/31456144569fc751b670b306f36f849a.jpg")) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 180, height: 180)
                                    
                                    Text("EullerPlaylist")
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                    
                                }
                            }
                        }
                        
                    }
                }
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

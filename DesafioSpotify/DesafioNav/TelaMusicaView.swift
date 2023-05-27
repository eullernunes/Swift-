//
//  TelaMusicaView.swift
//  DesafioNav
//
//  Created by Student10 on 22/05/23.
//

import SwiftUI

struct TelaMusicaView: View {
    var musicaSelecionada : Musicas
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.purple, .black],
                           startPoint: .top,
                           endPoint: .center).edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 100){
                
                VStack{
                    AsyncImage(url: URL(string: musicaSelecionada.capa)){ image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 200, height: 200, alignment: .leading)
                    Text(musicaSelecionada.nome)
                        .foregroundColor(.white)
                        .font(.title)
                    Text(musicaSelecionada.artista)
                        .foregroundColor(.white)
                        .font(.title2)
                }
                
                HStack(spacing: 20){
                    Image(systemName: "shuffle")
                        .colorInvert()
                        .font(.system(size: 30))
                    
                    Image(systemName: "backward.end.fill")
                        .colorInvert()
                        .font(.system(size: 30))
                    
                    Image(systemName: "play.fill")
                        .colorInvert()
                        .font(.system(size: 30))
                    
                    Image(systemName: "forward.end.fill")
                        .colorInvert()
                        .font(.system(size: 30))
                    
                    Image(systemName: "repeat")
                        .colorInvert()
                        .font(.system(size: 30))
                }
                
            }
            
        }
    }
}

struct TelaMusicaView_Previews: PreviewProvider {
    static var previews: some View {
        TelaMusicaView(musicaSelecionada : Musicas(id: 6, nome: "Hino dos Mlks", artista: "BIN, Orichi, Mc Daniel, Caio Passos,...",
                                                   capa:
                                                       "https://lastfm.freetls.fastly.net/i/u/ar0/1bee7b17cb15ec6c8b0bc2569e3019b1.jpg")
                                           )
    }
}

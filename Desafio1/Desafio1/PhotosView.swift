//
//  PhotosView.swift
//  Desafio1
//
//  Created by Student10 on 19/05/23.
//

import SwiftUI

struct PhotosView: View {
    
    let imagesArray = [
                        "pawprint.fill",
                        "tortoise.fill",
                        "soccerball",
                        "scissors",
                        "car",
                        "ladybug",
                        "bird.fill",
                        "location.fill",
                        "trash.square"
                        
                        
                        
                        
                    ]
    
    var body: some View {
        
        ScrollView{
            VStack{
                ForEach(imagesArray, id:\.self){
                    Image(systemName: "\($0)")
                        .resizable()
                        .scaledToFill()
                }
            }
        }
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosView()
    }
}

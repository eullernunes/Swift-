//
//  ContentView.swift
//  desafioMaps
//
//  Created by Student10 on 23/05/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -19.924557, longitude: -43.991597),
        span:  MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
    )
    
    @State private var localAtual = Location(name: "Belo Horizonte",
                         coordinate: CLLocationCoordinate2D(latitude: -19.924557, longitude: -43.991597),
                            flag: "https://http2.mlstatic.com/D_NQ_NP_614056-MLB25760634235_072017-O.jpg",
                            description: "Bh eh nos")
    
    @State private var ativa = false
    
    var body: some View {
        VStack {
            
            Text("World Map")
                .font(.title)
        
            
            Map(coordinateRegion: $region, annotationItems: locations){
                location in
                MapAnnotation(coordinate: location.coordinate){
                    Circle()
                        .frame(width: 20, height: 20)
                        .onTapGesture{
                            ativa = true
                            localAtual = location
                        }
                }
            }.sheet(isPresented: $ativa){
                Text(localAtual.name)
                AsyncImage(url: URL(string: localAtual.flag)){ image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 80, height: 80, alignment: .leading)
                Text(localAtual.description)
            }
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(locations){ location in
                        Button(location.name){
                            region = MKCoordinateRegion(
                                center: location.coordinate,
                                span:  MKCoordinateSpan(latitudeDelta: 0.6, longitudeDelta: 0.6)
                            )
                        }.buttonStyle(.bordered)
                    }
                }
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

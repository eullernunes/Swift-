//
//  ContentView.swift
//  Desafio2
//
//  Created by Student10 on 19/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination: Modo1()){
                    Text("Modo 1")
                }
                NavigationLink(destination: Modo2()){
                    Text("Modo 2")
                }
                NavigationLink(destination: Modo3()){
                    Text("Modo 3")
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

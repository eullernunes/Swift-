//
//  ContentView.swift
//  Desafio1
//
//  Created by Student10 on 19/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            TabView{
                HomeView()
                    .tabItem{
                        Label("Home", systemImage: "homekit")
                    }
                SearchView()
                    .tabItem{
                        Label("", systemImage: "magnifyingglass")
                    }
                PhotosView()
                    .tabItem{
                        Label("Photos", systemImage: "photo")
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

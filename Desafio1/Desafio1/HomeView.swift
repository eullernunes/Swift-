//
//  HomeView.swift
//  Desafio1
//
//  Created by Student10 on 19/05/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack{
            List(0...50, id: \.self){
                Text("Item \($0)")
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

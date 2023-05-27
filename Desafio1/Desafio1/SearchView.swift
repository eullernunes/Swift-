//
//  SearchView.swift
//  Desafio1
//
//  Created by Student10 on 19/05/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack{
            Rectangle()
                .fill(.blue)
                .frame(width: 300, height: 300)
                .overlay(
                    Text("Hello, Hackatruck!")
                )
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

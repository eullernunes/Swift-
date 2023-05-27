//
//  ContentView.swift
//  Desafio
//
//  Created by Student10 on 18/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var pesoString = ""
    @State private var alturaString = ""
    
    @State private var peso: Float = 0.0;
    @State private var altura: Float = 0.0;
    
    @State private var resultado: Float = 0
    
    @State private var backgroundColor = Color("normalColor")
    @State private var resultadoMsg = "Normal"
    
    
    
    
    var body: some View {
        
        ZStack(alignment: .top){
            backgroundColor
                .ignoresSafeArea()
                .animation(.default, value: backgroundColor)
            
            VStack(spacing: 30) {
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                
                TextField("Digite seu peso", text: $pesoString)
                    .multilineTextAlignment(.center)
                    .background(.white)
                    .cornerRadius(8)
                
                TextField("Digite sua altura", text: $alturaString)
                    .multilineTextAlignment(.center)
                    .background(.white)
                    .cornerRadius(8)

                Button{
                    controleClassificacao()
                }label: {
                    Text("Calcular")
                        .padding()
                        .padding([.leading, .trailing])
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                
                VStack(){
                    Text(resultadoMsg)
                        .font(.title)
                    
                    Spacer()
                    
                    Image("tabela-IMC")
                        .resizable()
                        .scaledToFit()
                }//hstack
                
            }//vstack
        }
    }
    
    func controleClassificacao(){
        
        peso = Float(pesoString) ?? 0.0
        altura = Float(alturaString) ?? 0.0
        
        resultado = peso / (altura * altura)
        
        if(resultado < 18.5){
            backgroundColor = Color("baixoPesoColor")
        }else if(resultado >= 18.5 && resultado <=  24.99){
            backgroundColor = Color("normalColor")
        }else if(resultado >= 25 && resultado < 30){
            backgroundColor = Color("sobrepesoColor")
        }else{
            backgroundColor = Color("obesidadeColor")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

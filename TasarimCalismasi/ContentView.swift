//
//  ContentView.swift
//  TasarimCalismasi
//
//  Created by Feyzullah Durası on 18.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            let ekranGenislik = geometry.size.width
            let ekranYukselik = geometry.size.height
            
            HStack{
                Text("Mer")
                ZStack(alignment: .bottom){
                    
                    Rectangle().fill(.gray).frame(width: 250, height: 500)
                    Image("resim")
                    
                    VStack(spacing: 60) {
                        Text("Lamba").frame(maxWidth: .infinity).background(.yellow)
                        Spacer().frame(width: 10, height: 1)
                        KirmiziKare()
                        YesilKare().frame(width: ekranGenislik/22, height: ekranYukselik/4)
                        Rectangle().fill(.blue).frame(width: 100, height: 10).padding(.bottom,50)
                        
                    }
                    Yazi(icerik: "Deneme", yaziBoyutu: 20)
                    
                }
                Text("haba")
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct KirmiziKare: View {
    var body: some View {
        Rectangle().fill(.red).frame(width: 120, height: 100)
    }
}

struct YesilKare: View {
    var body: some View {
        Rectangle().fill(.green)
    }
}

struct Yazi: View {
    var icerik = ""
    var yaziBoyutu = 0
    var body: some View {
        Text(icerik).font(.system(size: CGFloat(yaziBoyutu))).bold()
    }
}

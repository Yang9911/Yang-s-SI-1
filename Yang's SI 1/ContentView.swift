//
//  ContentView.swift
//  Yang's SI 1
//
//  Created by Chia-Hao Yang on 2022/5/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Text("臺中市霧峰區\n僑榮國民小學").font(.system(size: 30))
                    Image("logo").resizable().scaledToFill().frame(width: 50, height: 50, alignment: .center)
                }.padding()
            }
            Spacer()
            NavigationLink(destination:WebView()) {
                VStack {
                    Image(systemName: "leaf.circle").resizable().scaledToFit().frame(width: 50, height: 50, alignment: .center)
                    Text("校園導覽闖關").font(.caption)
                }
            }.padding()
            NavigationLink(destination:engshow()) {
                VStack {
                    Image(systemName: "play.circle").resizable().scaledToFit().frame(width: 50, height: 50, alignment: .center)
                    Text("英語教學影片").font(.caption)
                }
            }.padding()
            NavigationLink(destination:homelookview()) {
                VStack {
                    Image(systemName: "house.circle").resizable().scaledToFit().frame(width: 50, height: 50, alignment: .center)
                    Text("校訂課程-看見家園").font(.caption)
                }
            }.padding()
            NavigationLink(destination:fbview()) {
                VStack {
                    Image("fblogo").resizable().scaledToFit().frame(width: 50, height: 50, alignment: .center)
                    Text("僑榮國小官方粉絲").font(.caption)
                }
            }.padding()
            Spacer()
            
            authorview.multilineTextAlignment(.trailing)
        }.preferredColorScheme(.light)
    }
    
    
    var authorview: some View {
        Group {
            NavigationLink(destination: introview()) {
                
                Label("Designer: 楊家豪", systemImage: "person.circle").font(.caption)
            }
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

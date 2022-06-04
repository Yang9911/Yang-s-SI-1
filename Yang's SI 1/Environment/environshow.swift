//
//  environshow.swift
//  Yang's SI 1
//
//  Created by Chia-Hao Yang on 2022/6/4.
//

import SwiftUI
var environstage = 0
var envirtitle = ["1.門口意象","2.特色樂團","3.願景天橋","4.圖書館","5.跑酷樂園","6.運動場","7.劇場及視聽教室"]
struct environshow: View {
    @State var isenvirshow:Bool = false
    
    var body: some View {
        
        ScrollView{
            
            VStack{
                Text("校園導覽").font(.largeTitle).padding()
                Text("歡迎來到僑榮國小，跟著我們的導覽，您將慢慢認識僑榮國小特色環境及設備，準備好了嗎？\n請點選按鈕，開始進入")
                Spacer()
                Image(systemName: "arrow.down").resizable().scaledToFill().frame(width: 50, height: 50, alignment: .center).padding()
                Spacer()
                Button(envirtitle[environstage]) {
                    isenvirshow = true
                }.padding().background(Color.orange)
                    .cornerRadius(20).font(.title)
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
    }.overlay(Color.black.opacity(isenvirshow ? 1 : 0))
    .overlay(alignment: .top){envirto}.animation(.spring(), value: isenvirshow)
    }
    var envirto:some View {
            Group {
                if (isenvirshow) {
                    envirstage(isenvirshow :$isenvirshow).transition(.slide).padding()
                    
                }
            }
        }
}

struct environshow_Previews: PreviewProvider {
    static var previews: some View {
        environshow()
    }
}

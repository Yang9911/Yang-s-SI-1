//
//  envirstage.swift
//  Yang's SI 1
//
//  Created by Chia-Hao Yang on 2022/6/4.
//

import SwiftUI

struct envirstage: View {
    @Binding var isenvirshow:Bool
    @FocusState var isonfocus:Bool
    @State private var ispresented = false
    @State var envirtext = ["校門口可以看到:「I Love CRES」的造型意象，CRES代表僑榮國小的英文縮寫，象徵著我愛僑榮國小\n沿著辦公室旁邊走廊，可以看到全校師長的介紹．\n再往前走可以看到樂團教室，\n請按下一站按鈕","僑榮國小特色樂團-打擊樂團，成立幾十年的打擊樂團，屢屢在臺中市音樂比賽中，獲得不錯的佳績，也常常在學校的節慶中演出，團員們從低年級基礎開始練習，到高年級能正式上台演出，需要日積月累的練習．\n請按下一站按鈕","橫跨在兩棟校舍之間，連接著天橋，天橋上標示著僑榮國小的學校願景：智慧 溫馨 愛地球。代表僑榮國小課程特色，以及小朋友培養的重點\n請按下一站按鈕","從樓梯上到二樓，走過天橋，到達這棟三層樓建築，名為「育才樓」。二樓可以看到學校的圖書館．\n學校的圖書館，是由玉山銀行支持設立，第160座玉山圖書館，除了閱覽區域之外，還有說故事區域，提供故事媽媽為小朋友說故事使用\n請按下一站按鈕","下樓梯走回一樓，沿著連鎖磚往後方走，可以看到生態水池。\n生態水池旁邊，就是遊戲器材區．\n跑酷樂園是學校的遊戲器材區，提供小朋友下課時間，可以來這邊遊戲．\n請按下一站按鈕","沿著斜坡往上，進入運動場區域．\n原本直線跑道的運動場，經過政府補助改建，成為圓形跑道，提供學校運動比賽使用\n請按下一站按鈕","往回走，旁邊的圓形建築，一樓是小劇場，提供學校舉辦活動及表演使用；二樓是視聽教室，可以辦理演講及座談．\n導覽到這裡結束囉，請按返回按鈕"]
    var body: some View {
        ScrollView{
            VStack{
        Text(envirtitle[environstage]).foregroundColor(.white).font(.largeTitle).focused($isonfocus)
        Image("A\(environstage+1)").resizable().scaledToFill()
        Image("A\(environstage+1)1").resizable().scaledToFill()
                Text(envirtext[environstage]).font(.caption).foregroundColor(.white).padding()
                
                if environstage < 6 {
        Button("下一站"){
            ispresented = true
            isonfocus = true
            environstage += 1
            if environstage > 6 {
                environstage = 6
            }
        }.padding().foregroundColor(.blue).background(Color(.white)).cornerRadius(20)
                }
        Text("按這裡返回").font(.title).padding(.horizontal,6).padding(.vertical,3).foregroundColor(.blue).background(Color(.white)).cornerRadius(20).onTapGesture {
            isenvirshow = false
            
            }
        }
//            .onTapGesture {
//            isonfocus = false
//        }
        }.alert(isPresented: $ispresented){
            
            Alert(
                title: Text("歡迎來到\(envirtitle[environstage])")
            )}
    }
}

struct envirstage_Previews: PreviewProvider {
    static var previews: some View {
        envirstage(isenvirshow: Binding.constant(true))
    }
}

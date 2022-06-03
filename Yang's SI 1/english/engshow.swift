//
//  engshow.swift
//  Yang's SI 1
//
//  Created by Chia-Hao Yang on 2022/6/3.
//
import SwiftUI
import WebKit
struct engshow: UIViewRepresentable {
    typealias UIViewType = WKWebView
    func makeUIView(context: Context) -> WKWebView {
        WKWebView(frame: .zero)
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let url = URL(string: "https://www.youtube.com/channel/UCGItpKpE_F6IpoQKdBg5RtQ")
        let request = URLRequest(url: url!)
        uiView.load(request)
    }
}

//import SwiftUI
//
//struct engshow: View {
//    var body: some View {
//        Text("英語教學資源")
//    }
//}
//
//struct engshow_Previews: PreviewProvider {
//    static var previews: some View {
//        engshow()
//    }
//}

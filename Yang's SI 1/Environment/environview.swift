//
//  environview.swift
//  Yang's SI 1
//
//  Created by Chia-Hao Yang on 2022/6/2.
//

import SwiftUI
import WebKit
struct WebView: UIViewRepresentable {
    typealias UIViewType = WKWebView
    func makeUIView(context: Context) -> WKWebView {
        WKWebView(frame: .zero)
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let url = URL(string: "https://sites.google.com/cres.tc.edu.tw/cresnew/%E9%A6%96%E9%A0%81/%E9%97%96%E9%97%9C%E5%B0%8E%E8%A6%BD")
        let request = URLRequest(url: url!)
        uiView.load(request)
    }
}
//struct environview: View {
//    var body: some View {
//        Text("校園導覽")
//    }
//}
//
//struct environview_Previews: PreviewProvider {
//    static var previews: some View {
//        environview()
//    }
//}

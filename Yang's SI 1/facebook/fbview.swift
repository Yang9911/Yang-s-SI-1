//
//  fbview.swift
//  Yang's SI 1
//
//  Created by Chia-Hao Yang on 2022/6/3.
//

import SwiftUI
import WebKit
struct fbview: UIViewRepresentable {
    typealias UIViewType = WKWebView
    func makeUIView(context: Context) -> WKWebView {
        WKWebView(frame: .zero)
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let url = URL(string: "https://facebook.com/tccres")
        let request = URLRequest(url: url!)
        uiView.load(request)
    }
}

//struct fbview: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct fbview_Previews: PreviewProvider {
//    static var previews: some View {
//        fbview()
//    }
//}

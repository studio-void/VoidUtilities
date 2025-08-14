//
//  VoidWebView.swift
//  VoidUtilities
//
//  Created by 임정훈 on 8/14/25.
//

import SwiftUI
import WebKit

@available(iOS 15.0, *)
public struct VoidWebView: View {
    @State public var url: String = "https://github.com/studio-void"
    @State public var pageTitle: String = ""
    @Environment(\.presentationMode) var presentation
    
    public init(url: String = "https://github.com/studio-void", pageTitle: String = "") {
        self._url = State(initialValue: url)
        self._pageTitle = State(initialValue: pageTitle)
    }
    
    public var body: some View {
        VStack {
            ZStack{
                HStack{
                    Spacer()
                    Text(pageTitle)
                        .foregroundStyle(Color.gray900)
                    Spacer()
                }
                HStack{
                    Button(action: {
                        presentation.wrappedValue.dismiss()
                    }){
                        Image(systemName:"xmark")
                            .foregroundStyle(Color.gray900)
                    }
                    Spacer()
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
            WebEmbedView(urlToLoad: url, pageTitle: $pageTitle)
        }
    }
}

@available(iOS 15.0, *)
public struct WebEmbedView: UIViewRepresentable {
    
    public var urlToLoad: String
    @Binding public var pageTitle: String
    
    public init(urlToLoad: String, pageTitle: Binding<String>) {
        self.urlToLoad = urlToLoad
        self._pageTitle = pageTitle
    }
    
    public func makeUIView(context: Context) -> WKWebView {
        
        guard let url = URL(string: self.urlToLoad) else {
            return WKWebView()
        }
        
        let webview = WKWebView()
        
        webview.load(URLRequest(url: url))
        
        webview.navigationDelegate = context.coordinator
        
        return webview
    }
    
    public func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
    
    public func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    public class Coordinator: NSObject, WKNavigationDelegate {
        var parent: WebEmbedView
        
        init(_ parent: WebEmbedView) {
            self.parent = parent
        }
        
        public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            parent.pageTitle = webView.title ?? ""
        }
    }
}

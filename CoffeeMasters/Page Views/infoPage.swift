//
//  infoPage.swift
//  CoffeeMasters
//
//  Created by lawrencejews on 2022/07/22.
//

import SwiftUI
import WebKit

// Objective-C
class WebInterfaceDialogs: NSObject, WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print(message.body)
    }
}

struct WebView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> WKWebView {
        
        // Passing in a constructor
        let config = WKWebViewConfiguration()
        config.userContentController.add(WebInterfaceDialogs() , name: "alert")
        let webView = WKWebView(frame: .zero, configuration: config)
                      
        return webView  // The UIkit View
        }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let url = URL(string: "https://firtman.github.io/coffeemasters/webapp")
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
    func executeJavascript(webView: WKWebView){
        webView.evaluateJavaScript("alert('hello from swift')")
    }
}

struct infoPage: View {
    var body: some View {
        WebView()
    }
}

struct infoPage_Previews: PreviewProvider {
    static var previews: some View {
        infoPage()
    }
}

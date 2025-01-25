//
//  WebViewRepresentable.swift
//  Taskulator
//
//  Created by Valentin Köberl on 25.01.25.
//

import SwiftUI
import WebKit

// iOS WebView Representable
struct WebViewRepresentable: UIViewRepresentable { // Für iOS

    var url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}

#if os(macOS)
struct WebViewRepresentable: NSViewRepresentable {
    var url: URL

    // Erstellt die WKWebView unter macOS
    func makeNSView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator // Setze einen Coordinator für Debugging
        return webView
    }

    // Lädt die URL in die WebView
    func updateNSView(_ nsView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        nsView.load(request)
    }

    // Coordinator für Debugging
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    class Coordinator: NSObject, WKNavigationDelegate {
        func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
            print("Navigation failed: \(error.localizedDescription)")
        }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            print("Navigation finished successfully")
        }
    }
}
#endif

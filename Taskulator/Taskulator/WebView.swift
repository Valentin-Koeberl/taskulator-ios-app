//
//  WebView.swift
//  Taskulator
//
//  Created by Valentin Köberl on 25.01.25.
//

import SwiftUI
import WebKit

/// Gemeinsamer View für die WebView
struct WebView: View {
    var url: URL

    var body: some View {
        #if os(iOS)
        WebViewRepresentable(url: url)
        #elseif os(macOS)
        WebViewRepresentable(url: url)
        #endif
    }
}

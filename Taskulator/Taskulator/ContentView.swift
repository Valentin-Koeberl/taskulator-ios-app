//
//  ContentView.swift
//  Taskulator
//
//  Created by Valentin Köberl on 25.01.25.
//

import SwiftUI

struct ContentView: View {
    private let urlString = "https://valentin-koeberl.github.io/taskulator/"

    var body: some View {
        if let url = URL(string: urlString) {
            WebView(url: url)
        } else {
            Text("Ungültige URL")
                .foregroundColor(.red)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    ContentView()
}


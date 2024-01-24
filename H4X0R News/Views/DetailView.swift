//
//  DetailView.swift
//  H4X0R News
//
//  Created by Fırat AKBULUT on 26.09.2023.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
        webView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "www.google.com")
    }
}



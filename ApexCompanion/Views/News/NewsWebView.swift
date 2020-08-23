//
//  NewsWebView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/21/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct NewsWebView: View {
    var body: some View {
        Webview(url: Constants.URLs.newsURL)
    }
}

struct NewsWebView_Previews: PreviewProvider {
    static var previews: some View {
        NewsWebView()
    }
}

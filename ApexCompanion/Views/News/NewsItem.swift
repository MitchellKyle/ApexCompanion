//
//  NewsItem.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/27/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct NewsItem: View {
    
    var article: News
    
    var body: some View {
        VStack {
            Button (action: {
                guard let url = URL(string: self.article.link) else { return }
                 UIApplication.shared.open(url as URL)
            }) {
                VStack {
                    Text(article.title)
                        .font(.custom("Teko-Medium", size: 25))
                        .padding(.horizontal)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    
                    HStack {
                        AsyncImage(
                            url: URL(string: article.img)!,
                            placeholder: Text("Loading ...")
                        )
                        .aspectRatio(contentMode: .fit)
                    }
                    .cornerRadius(20)
                    .padding(.horizontal)
                    .padding(.top, -20)
                    .padding(.bottom, -10)
                    
                    Text(article.short_desc)
                        .font(.custom("Teko-Light", size: 23))
                        .padding(.horizontal)
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(.black)
                }
                .padding(.vertical)
            }
        }
        .background(Color.white.opacity(0.9))
        .cornerRadius(20)
        .padding(.top, 30)
    }
}

struct NewsItem_Previews: PreviewProvider {
    static var previews: some View {
        NewsItem(article: newsData[0])
    }
}

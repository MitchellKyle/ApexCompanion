//
//  NewsList.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/27/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct NewsList: View {
    
    var news: [News]
    
    var body: some View {
        ScrollView {
            
            HeaderView(title: "Apex News")
            
            VStack {
                ForEach (self.news.prefix(15), id: \.title) { news in
                    NewsItem(article: news)
                }
            }
        }
        .background(Image("season_6_bg").resizable().edgesIgnoringSafeArea(.all))
        .padding(.top, 1)
        .navigationBarHidden(false)
        .navigationBarTitle("Weapon Types", displayMode: .inline)
    }
}

struct NewsList_Previews: PreviewProvider {
    static var previews: some View {
        NewsList(news: newsData)
    }
}

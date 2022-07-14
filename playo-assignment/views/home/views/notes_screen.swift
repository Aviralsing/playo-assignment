//
//  noter_screen.swift
//  playo-assignment
//
//  Created by Aviral Singh on 14/07/22.
//

import Foundation
import SwiftUI
import SDWebImageSwiftUI

struct NewsScreen: View {
    @StateObject var newsViewModel = NewsViewModel();
    
    var body: some View {
        Group {
            if !newsViewModel.isLoading {
                List(newsViewModel.newsModel?.articles ?? []) {
                    NewstileScreen(article: $0);
                }.refreshable {
                    newsViewModel.newsfetch();
                }
            } else {
                ProgressView()
            }
        }.onAppear {
            newsViewModel.newsfetch();
        }
    }
    
}

struct NewstileScreen: View {
    
    var article: Articles;
    
    var body: some View {
        Link(destination: URL(string: article.url!)!) {
            HStack(spacing:3){
                VStack(alignment: .leading, spacing: 5){
                    Text("\(article.title ?? "")").foregroundColor(Color.black).font(.system(size: 17, weight: .semibold, design: .default)).frame(height:55)
                    Text("\(article.author ?? "")").foregroundColor(Color.black).font(.system(size: 11, weight: .medium, design: .default))
                    Text("\(article.description ?? "")").foregroundColor(Color.black).font(.system(size: 14, weight: .medium, design: .default)).multilineTextAlignment(.leading)
                }.frame(width:250,height:120).padding(.leading,-45)
                //                Spacer()
                WebImage(url: URL(string: article.urlToImage!)!).resizable().frame(width: 90, height: 90)
            }.padding().frame(width:355,height:140).onAppear {
                debugPrint(article)
            }
        }
    }
}



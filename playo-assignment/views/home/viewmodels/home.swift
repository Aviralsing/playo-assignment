//
//  mobile_viewmodel.swift
//  playo-assignment
//
//  Created by Aviral Singh on 14/07/22.
//

import Foundation

class NewsViewModel: ObservableObject {
    
    
    @Published var newsModel: NewsModel?
    @Published var isLoading: Bool = true;
    
    func newsfetch() {
        self.isLoading = true;
        APIManager.sharedInstance.GetRequestInterceptor(WebService.API_HOST_NEWS, headers: [:]) { response in
            do{
                let jsonResponse = try JSONDecoder().decode(NewsModel.self, from: response)
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    self.newsModel = jsonResponse;
                    self.isLoading = false;
                }
            } catch {
                print(error)
            }
            
        } failure: { error in
            print(error)
        }
    }
}

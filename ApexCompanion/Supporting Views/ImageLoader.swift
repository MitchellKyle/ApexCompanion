//
//  ImageLoader.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/27/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ImageLoader: ObservableObject {
    
    @Published var image: UIImage?
    
    private let url: URL
    private var cancellable: AnyCancellable?
    
    deinit {
        cancellable?.cancel()
    }

    init(url: URL) {
        
        self.url = url
        
    }
    
    func load() {
        
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
        .map { UIImage(data: $0.data) }
        .replaceError(with: nil)
        .receive(on: DispatchQueue.main)
        .assign(to: \.image, on: self)
        
    }

    func cancel() {
        
        cancellable?.cancel()
        
    }
    
}

struct AsyncImage<Placeholder: View>: View {
    
    @ObservedObject private var loader: ImageLoader
    
    private let placeholder: Placeholder?
    
    init(url: URL, placeholder: Placeholder? = nil) {
        
        loader = ImageLoader(url: url)
        self.placeholder = placeholder
        
    }

    var body: some View {
        
        image
            .onAppear(perform: loader.load)
            .onDisappear(perform: loader.cancel)
        
    }
    
    private var image: some View {
        
        Group {
            if loader.image != nil {
                
                Image(uiImage: loader.image!)
                    .resizable()
                    .renderingMode(.original)
                
            } else {
                
                placeholder
                
            }
        }
        
    }
}

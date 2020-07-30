//
//  SwiftUIView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 7/29/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Image("bg")
            .resizable()
            .edgesIgnoringSafeArea(.all)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

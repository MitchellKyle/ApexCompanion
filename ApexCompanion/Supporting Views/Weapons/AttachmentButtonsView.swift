//
//  AttachmentButtonsView.swift
//  ApexCompanion
//
//  Created by Mitchell Sharber on 8/7/20.
//  Copyright © 2020 Mitchell Sharber. All rights reserved.
//

import SwiftUI

struct AttachmentButtonsView: View {
    
    var image: String
    var condition: Bool
    
    var body: some View {
        Image(image)
        .resizable()
        .frame(width: 50, height: 50)
        .padding(.all, 5)
        .background(condition ? Color.black : Color.clear)
        .foregroundColor(condition ? Color.white : Color.black)
    }
}

struct AttachmentButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        AttachmentButtonsView(image: "extended_heavy_mag", condition: true)
    }
}

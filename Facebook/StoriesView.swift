//
//  StoriesView.swift
//  Facebook
//
//  Created by LEANDRO RAINHA on 03/05/23.
//

import Foundation
import SwiftUI

struct StoriesView: View {
    
    let stories: [String]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 3) {
                ForEach(stories, id: \.self) { name in
                    Image(name)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140, height: 200, alignment: .center)
                        .background(Color.red)
                        .clipped()
                }
            }
            .padding()
        }
    }
}

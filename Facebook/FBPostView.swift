//
//  FBPostView.swift
//  Facebook
//
//  Created by LEANDRO RAINHA on 03/05/23.
//

import Foundation
import SwiftUI

struct FBPost: View {
    
    @State var isLiked: Bool = false
    
    let model: FBPostModel
    
    var body: some View {
        VStack{
            HStack{
                Image(model.imageName)
                    .resizable()
                    .frame(width: 80, height: 80, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(70)
                VStack{
                    HStack{
                        Text(model.name)
                            .foregroundColor (Color.blue)
                            .font (.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }
                    HStack{
                        Text("12 minutes ago")
                            .foregroundColor (Color(.secondaryLabel))
                        Spacer()
                    }
                }
                Spacer()
                
            }
            Spacer()
            
            HStack{
                Text(model.post)
                    .font (.system(size: 24, weight: .regular, design: .default))
                Spacer()
            }
            
            HStack{
                Button(action: {
                    isLiked.toggle()
                }, label: {
                    Text(isLiked ? "Liked" : "Like")
                })
                
                Spacer()
                Button(action: {
                }, label: {
                    Text ( "Comment" )
                })
                
                Spacer()
                
                Button(action: {
                }, label: {
                    Text ("Share")
                })
            }
            .padding()
        }
        .padding()
        .background(Color (.systemBackground))
        .cornerRadius(7)
    }
}

//
//  ContentView.swift
//  Facebook
//
//  Created by LEANDRO RAINHA on 02/05/23.
//

import SwiftUI

struct FBPostModel: Hashable{
    let name: String
    let post: String
    let imageName: String
}

struct ContentView: View {
    
    @Binding var text: String
    
    let stories = ["selfie1", "selfie2", "selfie3", "selfie1", "selfie2", "selfie3"]
    
    let posts: [FBPostModel] = [
        FBPostModel(name: "Mark Zuckerberg",
                    post: "Ei pessoal! Criei o Facebook pra dominar o mundo. (brincadeirinha.. ou não.. kkk)",
                    imageName: "zuck"),
        FBPostModel(name: "Homer",
                    post: "Muito boa kkkkk",
                    imageName: "selfie1"),
        FBPostModel(name: "Pica-Pau",
                    post: "Brincadeira né.. sei rs",
                    imageName: "selfie3"),
        
    ]
    
    let facebookBlue = UIColor(red: 23/255.0,
                               green: 120/255.0,
                               blue: 242/255.0,
                               alpha: 1)
    
    
    var body: some View {
        VStack {
            HStack {
                Text ("facebook" )
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor (Color (facebookBlue))
                
                Spacer ()
                
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 45, height: 45, alignment: .center)
                    .foregroundColor(Color(.secondaryLabel))
                
            }
            .padding()
            
            TextField("Search...", text: $text)
                .padding (7)
                .background (Color (.systemGray5))
                .cornerRadius(13)
                .padding(.horizontal, 15)
            
            ZStack {
                Color (.secondarySystemBackground)
                
                ScrollView(.vertical) {
                    VStack{
                        StoriesView(stories: stories)
                        
                        ForEach(posts, id: \.self){ model in
                            FBPost (model: model)
                            Spacer()
                            
                            }
                        }
                    }
                }
                Spacer()
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView( text: .constant(""))
        }
    }
    
    


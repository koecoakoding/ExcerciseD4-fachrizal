//
//  ListDetailsView.swift
//  excercise-closure
//
//  Created by Randy Senjaya on 03/08/23.
//

import SwiftUI


struct ListDetailsView: View {
    let listDetails: Coffeeshop
    
    var body: some View {
        VStack{
            Text(listDetails.name)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .padding([.leading, .trailing] ,10)
                .padding(.bottom, 30)
            
            Image("\(listDetails.image)")
                .resizable()
                .frame(width: 300, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 60))
            
            
            Text(listDetails.review)
                .font(.body)
                .fontWeight(.black)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .padding(.all, 30)
            
            HStack {
                
                Text(listDetails.location)
                    .font(.caption)
                    .fontWeight(.black)
                Spacer()
            }
            .padding(.leading, 50)
            
            Spacer()
        }
    }
}

struct EmojiDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailsView(listDetails: Coffeeshop(image: "bojaeatery", name: "String", location: "starling", review: "weh jhgkugjgjhghjgjhgjhgvjhgv"))
    }
}

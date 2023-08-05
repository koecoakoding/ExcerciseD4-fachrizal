//
//  ContentView.swift
//  excercise-closure
//
//  Created by Randy Senjaya on 03/08/23.
//

import SwiftUI

struct ContentView: View {
    
    private var searchResult: [Coffeeshop]{
        let result = CoffeeshopProvider.all()
        
        if searchText.isEmpty{
            return result
        } else{
            return result.filter { index in
                index.name.lowercased()
                    .contains(searchText.lowercased())
            }
        }
    }
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack{
            List(searchResult){ result in
                NavigationLink { ListDetailsView(listDetails: result)
                    
                } label: {
                    HStack{
                        Image("\(result.image)")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                        
                        Text("\(result.name)")
                            .font(.headline)
                            .padding(10)
                    }
                }
            }
            .searchable(text: $searchText)
            .listStyle(.plain)
            .navigationTitle("Coffee Shop List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

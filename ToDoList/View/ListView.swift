//
//  ContentView.swift
//  ToDoList
//
//  Created by Ainash Turbayeva on 03.03.2023.
//

import SwiftUI

struct ListView: View {
 
    
    @State var items: [ItemModel] = [
        ItemModel(title: "this is the first item", isCompleted: false),
        ItemModel(title: "this is the second item", isCompleted: true),
        ItemModel(title: "this is the third item", isCompleted: false)
    ]
    
    var body: some View {
        List{
            ForEach(items ){
                item in ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("ToDo List")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}

//
//List{
//    ForEach(items, id: \.self) { item in ListRowView(title: item)
//    }
//}
//.listStyle(PlainListStyle())
//.navigationTitle("ToDo List 📝")
//.navigationBarItems(
//    leading: EditButton()  ,
//    trailing: NavigationLink("Add", destination: AddView()))

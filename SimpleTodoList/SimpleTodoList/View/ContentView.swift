//
//  ContentView.swift
//  SimpleTodoList
//
//  Created by Tran Minh Thien on 3/7/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: user typed keyword
        @State var searchKeyword: String = ""

        var results: [Todo] {
            return searchKeyword.isEmpty ? todos : todos.filter({ todo in
                todo.title.lowercased().contains(searchKeyword.lowercased())
            })
        }
    var body: some View {
        NavigationView {
            List {
                ForEach(results, id: \.self) { todo in
                    NavigationLink(destination: TodoDetailView(todo: todo)) {
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                                Text(todo.title).font(.title3)
                                Text(formatDate(todo.date))
                            })
                            Spacer()
                            StatusIndicator(status: todo.status)
                        })
                    }
                }
            }
            .listStyle(.inset)
            .padding()
            .navigationTitle("Todo List")
            .searchable(text: $searchKeyword)
            
        }
    }
    
    private func formatDate(_ date: Date) -> String {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            formatter.timeStyle = .short
            return formatter.string(from: date)
        }
}

#Preview {
    ContentView()
}

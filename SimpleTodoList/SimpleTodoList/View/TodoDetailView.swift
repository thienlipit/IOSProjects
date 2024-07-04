//
//  TodoDetailView.swift
//  SimpleTodoList
//
//  Created by Tran Minh Thien on 3/7/24.
//

import SwiftUI

struct TodoDetailView: View {
    var todo: Todo
    var body: some View {
        VStack(alignment: .leading, spacing: 10, content: {
            Text(todo.title).font(.title)
            Text(formatDate(todo.date)).font(.subheadline).foregroundColor(.gray)
            StatusIndicator(status: todo.status)
        })
    }
    
    private func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

#Preview {
    TodoDetailView(todo: Todo(id: 11, title: "test", date: createDate(year: 2023, month: 12, day: 12, hour: 12, minute: 12), status: .completed))
}

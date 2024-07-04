//
//  Todo.swift
//  SimpleTodoList
//
//  Created by Tran Minh Thien on 3/7/24.
//

import Foundation

enum TodoStatus: String {
    case pending
    case completed
}

struct Todo: Identifiable, Hashable {
    let id: Int
    let title: String
    let date: Date
    var status: TodoStatus
}

// Helper function to create Date instances from components
func createDate(year: Int, month: Int, day: Int, hour: Int, minute: Int) -> Date {
    var components = DateComponents()
    components.year = year
    components.month = month
    components.day = day
    components.hour = hour
    components.minute = minute
    components.timeZone = TimeZone.current
    let calendar = Calendar.current
    return calendar.date(from: components)!
}

// Sample data
let todos: [Todo] = [
    Todo(id: 1, title: "Buy groceries", date: createDate(year: 2024, month: 1, day: 1, hour: 10, minute: 10), status: .pending),
    Todo(id: 2, title: "Finish homework", date: createDate(year: 2024, month: 1, day: 1, hour: 10, minute: 10), status: .pending),
    Todo(id: 3, title: "Call mom", date: createDate(year: 2024, month: 1, day: 1, hour: 10, minute: 10), status: .completed),
    Todo(id: 4, title: "Go for a run", date: createDate(year: 2024, month: 1, day: 1, hour: 10, minute: 10), status: .completed),
]

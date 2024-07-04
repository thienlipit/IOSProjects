//
//  StatusIndicator.swift
//  SimpleTodoList
//
//  Created by Tran Minh Thien on 3/7/24.
//

import SwiftUI

struct StatusIndicator: View {
    var status: TodoStatus

    var body: some View {
        let backgroundColor: Color = {
                        switch status {
                        case .completed:
                            return Color.green
                        case .pending:
                            return Color.orange
                        }
                    }()

        Text(status == .completed ? "Completed" : "Pending")
            .font(.footnote)
            .foregroundColor(.white)
            .padding(8)
            .background(backgroundColor)
            .clipShape(Capsule())
    }
}

#Preview {
    StatusIndicator(status: .pending)
}

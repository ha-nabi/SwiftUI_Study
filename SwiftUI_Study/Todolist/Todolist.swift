//
//  Todolist.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 11/27/23.
//

import SwiftUI

struct Task: Identifiable, Equatable {
    var id = UUID()
    var title: String
    var isCompleted = false
}

struct Todolist: View {
    
    @ObservedObject var taskManager = TaskManager()
    @State private var newTaskTitle = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(taskManager.tasks) { task in
                    Text(task.title)
                        .strikethrough(task.isCompleted)
                        .contextMenu {
                            Button(action: {
                                taskManager.deleteTask(at: IndexSet([taskManager.tasks.firstIndex(of: task)!]))
                            }) {
                                Text("Delete")
                            }
                        }
                }
                .onDelete(perform: taskManager.deleteTask)
            }
            .navigationTitle("To-Do List")
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    HStack {
                        TextField("Add a task", text: $newTaskTitle)
                        Button("Add") {
                            taskManager.addTask(title: newTaskTitle)
                            newTaskTitle = ""
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    Todolist()
}

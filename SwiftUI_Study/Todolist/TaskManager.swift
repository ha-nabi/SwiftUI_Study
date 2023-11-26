//
//  TaskManager.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 11/27/23.
//

import SwiftUI

class TaskManager: ObservableObject {
    @Published var tasks: [Task] = []

    func addTask(title: String) {
        let newTask = Task(title: title)
        tasks.append(newTask)
    }

    func deleteTask(at index: IndexSet) {
        tasks.remove(atOffsets: index)
    }
}

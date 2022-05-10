//
//  Programmer.swift
//  TestExpenses
//
//  Created by Lucas Chae on 5/10/22.
//

import Foundation

class Programmer: ObservableObject, Identifiable {
    var id = UUID()
    @Published var name: String // Yell out when this changes!
    init(named newName: String) { name = newName }
}

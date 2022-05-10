//
//  AllProgrammerView.swift
//  TestExpenses
//
//  Created by Lucas Chae on 5/10/22.
//

import SwiftUI

// Observe three objects, but not edit them.

struct AllProgrammersView: View {
    @ObservedObject var lead:         Programmer // Pass this in!
    @ObservedObject var novice:       Programmer
    @ObservedObject var intermediate: Programmer

    var body: some View {
        VStack {
            Text("Observe, but not edit.").font(.headline)
            Text(lead.name)           // Just view. No editing.
            Text(intermediate.name)   // Just view. No editing.
            Text(novice.name)         // Just view. No editing.
        }.foregroundColor(.yellow)
            .frame(width: 330, height: 120).background(Color.black)
    }
}


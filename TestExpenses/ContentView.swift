//
//  ContentView.swift
//  TestExpenses
//
//  Created by Lucas Chae on 5/10/22.
//

import SwiftUI



struct PublishedObjectTest: View {
    // You want to observe THREE objects that might change.
    @StateObject var obelix    = Programmer(named: "Obelix")
    @StateObject var lulu      = Programmer(named: "Lulu")
    @StateObject var twoStraws = Programmer(named: "twoStraws")

    var body: some View {
        VStack {
            Form {
                Text("Edit a name").font(.headline)
                TextField("name", text: $obelix.name    )
                TextField("name", text: $lulu.name      )
                TextField("name", text: $twoStraws.name )
            }.frame(height: 270)
            // pass in specific objects to ProgrammerView
            ProgrammerView(myProgrammer: obelix,    myColor: .red,   myBackground: .yellow )
            ProgrammerView(myProgrammer: lulu,      myColor: .white, myBackground: .indigo )
            ProgrammerView(myProgrammer: twoStraws, myColor: .black, myBackground: .teal   )
            // pass in ALL objects to AllProgrammersView
            AllProgrammersView(lead: twoStraws, novice: lulu, intermediate: obelix)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PublishedObjectTest()
    }
}

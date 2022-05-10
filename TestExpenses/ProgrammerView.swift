//
//  ProgrammerView.swift
//  TestExpenses
//
//  Created by Lucas Chae on 5/10/22.
//

import SwiftUI

struct ProgrammerView: View {

    @ObservedObject var myProgrammer: Programmer // Pass in a reference!
    var myColor      = Color.teal
    var myBackground = Color.yellow

    var body: some View {
        VStack{
            Text("Observe and edit").font(.headline).foregroundColor(.black)
            TextField("name", text: $myProgrammer.name) // Yes! you can edit the name.
                .multilineTextAlignment(.center)
        }
        .frame(width: 330, height: 100, alignment: .center)
        .foregroundColor( myColor ).background(myBackground.opacity(0.6))
    }

}


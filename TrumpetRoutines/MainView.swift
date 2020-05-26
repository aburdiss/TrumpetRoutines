//
//  MainView.swift
//  TrumpetRoutines
//
//  Created by Alex Burdiss on 5/14/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView() {
            VStack {
                NavigationLink(destination:
                    RoutineView()
                ) {
                    HStack {
                        Text("Begin Routine")
                            .font(.title)
                        Image(systemName: "play")
                            .font(.title)
                    }
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.yellow, lineWidth: 2))
                    .padding()
                    
                }
                
            }
            
            .navigationBarTitle("Trumpet Routines")
        }
    .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

//
//  SettingsView.swift
//  TrumpetRoutines
//
//  Created by Alex Burdiss on 5/14/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var settings: settingsModel
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Fundamentals")) {
                        Toggle(isOn: $settings.longTonesToggle) {
                            Text("Long Tones")
                        }
                        Toggle(isOn: $settings.slowLipSlursToggle) {
                            Text("Slow Lip Slurs")
                        }
                        Toggle(isOn: $settings.fastLipSlursToggle) {
                            Text("Fast Lip Slurs")
                        }
                        Toggle(isOn: $settings.staticArticulationToggle) {
                            Text("Single Note Articulation")
                        }
                        Toggle(isOn: $settings.variableArticulationToggle) {
                            Text("Changing Note Articulation")
                        }
                        Toggle(isOn: $settings.majorScalesToggle) {
                            Text("Major Scales")
                        }
                        Toggle(isOn: $settings.highRangeToggle) {
                            Text("High Range")
                        }
                        Toggle(isOn: $settings.lowRangeToggle) {
                            Text("Low Range")
                        }
                        
                    }
                    Section(header: Text("Routine Length")) {
                        Picker(selection: $settings.selectedDifficulty, label:Text("Routine Length")) {
                            ForEach(0 ..< 3) {
                                Text(self.settings.difficulties[$0])
                            }
                        }
                    .pickerStyle(SegmentedPickerStyle())
                    }
                    Section(header: Text("Resources")) {
                        Button(action: {
                            let url = URL(string: "https://apps.apple.com/us/app/scale-practice-randomizer/id1496727056")!
                            UIApplication.shared.open(url)
                        }) {
                            Text("Download Scale Practice - Randomizer")
                        }
                        Button(action: {
                            let url = URL(string: "http://www.arsnovapublishing.com")!
                            UIApplication.shared.open(url)
                        }) {
                            Text("Visit Ars Nova Publishing")
                        }
                        Button(action: {
                            let url = URL(string: "http://www.bandroomonline.com")!
                            UIApplication.shared.open(url)
                        }) {
                            Text("Visit Band Room Online")
                        }
                    }
                    Section(header: Text("About")) {
                        Text("©2020 Alexander Burdiss")
                        Button(action: {
                            let url = URL(string: "mailto:aburdiss@gmail.com")!
                            UIApplication.shared.open(url)
                        }) {
                            Text("Send Feedback")
                        }
                    }
                }
                .listStyle(GroupedListStyle())
            }
            .environmentObject(settings)
            .navigationBarTitle("Settings")
        }
    .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().environmentObject(settingsModel())
    }
}
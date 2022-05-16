//
//  ContentView.swift
//  AgileMate
//
//  Created by Stefano Cislaghi on 16/05/2022.
//

import SwiftUI

struct ContentView: View {
    @State var isUpdated : Bool = false
    var body: some View {
        VStack{
            Text("Hello, world!").padding()
            Button("Open Preferences", action: {
                NSApp.sendAction(Selector(("showPreferencesWindow:")), to: nil, from: nil)
                NSApp.activate(ignoringOtherApps: true)
            }).padding()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        //MARK: https://www.reddit.com/r/SwiftUI/comments/hnfwuh/a_menubar_example_with_popover_window_using/fygojkd?utm_source=share&utm_medium=web2x for fix.
    }
    func updateStatusBarTitle(title: String){
        AppDelegate.shared.statusBarItem?.button?.title = title
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

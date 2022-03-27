//
//  Home.swift
//  deathwheel
//
//  Created by Hiep Nguyen on 25/03/2022.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
        TabView {
            Game1().tabItem {
                Image(systemName: "house.fill")
                Text("Game1")
            }
            
            Game2().tabItem {
                Image(systemName: "house.fill")
                Text("Game2")
            }
            
            Game3().tabItem {
                Image(systemName: "house.fill")
                Text("Game3")
            }
            
            Game4().tabItem {
                Image(systemName: "house.fill")
                Text("Game4")
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

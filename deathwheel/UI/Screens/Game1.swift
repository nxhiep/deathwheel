//
//  Game1.swift
//  deathwheel
//
//  Created by Hiep Nguyen on 25/03/2022.
//

import SwiftUI

struct Game1: View {
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack(alignment: .center) {
                    Text("Question")
                    Text("???")
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 200, height: 200)
                        .cornerRadius(200)
                    Button {

                    } label: {
                        Text("Reset wheel")
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        
                    }, label: {
                        Text("Settings")
                    })
                }
                ToolbarItem(placement: .primaryAction) {
                    NavigationLink(destination: AddQuestionView()) {
                        Text("Menu")
                    }
                }
            }
        }
    }
}

struct Game1_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Game1()
                .previewInterfaceOrientation(.portraitUpsideDown)
            Game1()
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}

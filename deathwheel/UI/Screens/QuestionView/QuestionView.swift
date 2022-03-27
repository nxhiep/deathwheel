//
//  QuestionView.swift
//  deathwheel
//
//  Created by Hiep Nguyen on 26/03/2022.
//

import SwiftUI

struct QuestionView: View {
    
    @StateObject private var model = QuestionViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}

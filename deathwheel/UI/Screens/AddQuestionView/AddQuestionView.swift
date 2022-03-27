//
//  AddQuestionView.swift
//  deathwheel
//
//  Created by Hiep Nguyen on 26/03/2022.
//

import SwiftUI

struct AddQuestionView: View {
    
    @StateObject private var model = AddQuestionViewModel()
    @State var show = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
            NavigationView {
                    VStack{
                        Button(action: {
                            self.show.toggle()
                        }, label: {
                            Text("Add Question")
                        })
                        if(model.isLoading) {
                            Text("Loading...")
                        } else {
                            List(model.questions, id: \._id) { question in
                                Text(question.question)
                            }
                        }
                    }
                }.onAppear {
                    model.getQuestions()
                }
                .toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        Button(action: {
                            model.getQuestions()
                        }, label: {
                            Text("Add Question")
                        })
                    }
                }
                BottomSheetView(
                    isOpen: self.$show,
                    maxHeight: geometry.size.height * 0.9
                ) {
                    Text("XXX")
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct AddQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        AddQuestionView()
    }
}

//
//  TestView.swift
//  SmartHome
//
//  Created by Kambiz on 2024-01-24.
//

import SwiftUI

struct MyModel {
    var id: String
    var name: String
    var notify: Bool
}



struct TestView: View {
    @State var myModels: [MyModel] = [
        MyModel(id: "1", name: "First Model", notify: false),
        MyModel(id: "2", name: "Second Model", notify: true)
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(myModels.indices, id: \.self) { index in
                    Toggle(isOn: self.$myModels[index].notify) {
                        Text(self.myModels[index].name)
                    }
                }
            }
            .navigationBarTitle(Text("My Models"))
        }
    }
}

#Preview {
    TestView()
}

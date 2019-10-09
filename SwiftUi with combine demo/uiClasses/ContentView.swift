//
//  ContentView.swift
//  SwiftUi with combine demo
//
//  Created by kushal dave on 09/10/19.
//  Copyright © 2019 kushal dave. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //declared a static list of users here
//        let users = [
//            UserModel(name: "person 1", email: "person1@gmail.com",phoneNum: "678359234", imageUrl: "https://icon-library.net/images/user-image-icon/user-image-icon-17.jpg"),
//            UserModel(name: "person 2", email: "person1@gmail.com",phoneNum: "732874936", imageUrl: "https://static.thenounproject.com/png/17241-200.png"),
//            UserModel(name: "person 3", email: "person1@gmail.com",phoneNum: "268395975", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYm-KcyvHy3PDkmh0V9KzkUk26255h0RwthshiaoanTnfH2B_IRg")
//        ]
    var body: some View {
        Text("users")
//        NavigationView{
//            List(users) { user in //will create views for every user in our list
//                ContentItemView(user: user) //we send each user object to the itemview class which will create view with the object
//            }.navigationBarTitle(Text("Users")) //adds navigation title
//        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

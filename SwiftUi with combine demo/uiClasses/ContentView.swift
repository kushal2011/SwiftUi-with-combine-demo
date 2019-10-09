//
//  ContentView.swift
//  SwiftUi with combine demo
//
//  Created by kushal dave on 09/10/19.
//  Copyright © 2019 kushal dave. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
@ObservedObject var viewModel: UsersViewModel = UsersViewModel()
    var body: some View {
        NavigationView{
            List(viewModel.users) { user in //will create views for every user in our list
                ContentItemView(user: user) //we send each user object to the itemview class which will create view with the object
            }.navigationBarTitle(Text("Users")) //adds navigation title
        }.onAppear(){
            self.viewModel.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

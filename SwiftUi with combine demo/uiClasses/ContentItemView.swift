//
//  ContentItemView.swift
//  SwiftUi with combine demo
//
//  Created by kushal dave on 09/10/19.
//  Copyright © 2019 kushal dave. All rights reserved.
//

import Foundation
import SwiftUI
import KingfisherSwiftUI

struct ContentItemView : View {
    @State var user: UserModel //takes usermodel from contentview class
    
    var body: some View {
        HStack { //create view in horizontal stack
            KFImage(URL(string: (self.user.picture.thumbnail!))!).resizable().clipShape(Circle()).frame(width: 70, height: 70) //used kingfisher library to load image from url
            VStack(alignment: .leading) { //create view in vertical stack with leading alignment

                
                Text(user.name.title + " " + user.name.first + " " + user.name.last)
                Spacer()
                
                Text(user.email)
                Spacer()

                Text(user.cell)
                Spacer()

            }.padding(.init(top: 2, leading: 8, bottom: 2, trailing: 8)) //adds padding
        }.padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
    }
}

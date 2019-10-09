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
    @State var user: UserModel
    
    var body: some View {
        HStack {
            KFImage(URL(string: (self.user.imageUrl))!).resizable().clipShape(Circle()).frame(width: 70, height: 70)
            VStack(alignment: .leading) {
                
                Text(user.name)
                Spacer()
                
                Text(user.email)
                Spacer()

                Text(user.phoneNum)
                Spacer()

            }.padding(.init(top: 2, leading: 8, bottom: 2, trailing: 8))
        }.padding(.init(top: 10, leading: 0, bottom: 10, trailing: 0))
    }
}

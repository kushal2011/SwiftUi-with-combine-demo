//
//  UserModel.swift
//  SwiftUi with combine demo
//
//  Created by kushal dave on 09/10/19.
//  Copyright © 2019 kushal dave. All rights reserved.
//

import Foundation

public struct UserModel :Identifiable {
    public var id = UUID()

    let name,email,phoneNum,imageUrl:String

}

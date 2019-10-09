//
//  UsersViewModel.swift
//  SwiftUi with combine demo
//
//  Created by kushal dave on 09/10/19.
//  Copyright © 2019 kushal dave. All rights reserved.
//

import Foundation
import Combine

public class UsersViewModel : ObservableObject {
    public let willChange = PassthroughSubject<UsersViewModel, Never>()
    @Published private(set) var users:usersList = [UserModel](){
        didSet {
            willChange.send(self)
        }
    }
        
        func fetchData() {
              let urlJSON = "https://randomuser.me/api/?results=10"
              guard let url = URL(string: urlJSON) else {return}
              URLSession.shared.dataTask(with: url) { (data, response, error) in
                guard let data = data else {return}
                guard error == nil else {return}
                do {
                    let jsonDecoder = JSONDecoder()
                    let responseModel = try jsonDecoder.decode(Users.self, from: data)
                    DispatchQueue.main.async {
                        self.users = responseModel.results!
                      }
//                    for user in self.users{
//                        debugPrint(user.cell)
//                    }
                } catch let error {
                  debugPrint(error)
                }
            }.resume()
        }
}

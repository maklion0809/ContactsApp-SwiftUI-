//
//  Contact.swift
//  Task16SwiftUI
//
//  Created by Tymofii (Work) on 04.12.2021.
//

import SwiftUI

struct Contact: Hashable {
    var firstName: String
    var lastName: String
    var phone: String
    var email: String
    var street: String
    var city: String
    var image: UIImage
}

class ListContacts: ObservableObject {
    @Published var contacts : [Contact] = []
}
